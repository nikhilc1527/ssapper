mod tests;

use std::{
    collections::BTreeMap,
    fmt::Debug,
    fs::{self, canonicalize, read_dir, remove_file, rename, File, OpenOptions},
    hash::{DefaultHasher, Hash, Hasher},
    io::{BufWriter, Write},
    marker::PhantomData,
    path::{Path, PathBuf},
    time::{SystemTime, UNIX_EPOCH},
};

use anyhow::ensure;
use fs4::fs_std::FileExt;
use memmap::Mmap;
use serde::{de::DeserializeOwned, Serialize};
use tempfile::NamedTempFile;

type Result<R> = anyhow::Result<R>;

fn write_u64(f: &mut BufWriter<File>, n: u64) -> Result<()> {
    let buf = n.to_le_bytes();
    ensure!(f.write(&buf)? == 8);
    Ok(())
}

fn read_u64(buf: &[u8]) -> Result<u64> {
    ensure!(buf.len() >= 8);
    Ok(u64::from_le_bytes(buf[0..8].try_into()?))
}

/*
file format:
h: u64 = first 8 bytes: number of indices (hashes) that exist in this file
index block: 8 (hash) + 8 (offset) + 8 (len) + 8 (unix epoch timestamp) = 32 bytes
index blocks sorted by hash string
next h * 32 bytes: index blocks
next sum(len) bytes: data
 */
#[derive(Debug)]
pub struct Index {
    pub hash: u64,
    pub offset: usize,
    pub len: usize,
    pub timestamp: u64,
}

impl Index {
    fn write_to_file(&self, f: &mut BufWriter<File>) -> Result<()> {
        write_u64(f, self.hash)?;
        write_u64(f, self.offset as u64)?;
        write_u64(f, self.len as u64)?;
        write_u64(f, self.timestamp)?;

        Ok(())
    }

    fn read_from_bytes(bytes: &[u8]) -> Result<Self> {
        ensure!(bytes.len() >= 32);

        let hash = read_u64(bytes)?;
        let offset = read_u64(&bytes[8..])? as usize;
        let len = read_u64(&bytes[16..])? as usize;
        let timestamp = read_u64(&bytes[24..])?;

        Ok(Self {
            hash,
            offset,
            len,
            timestamp,
        })
    }
}

impl PartialEq for Index {
    fn eq(&self, other: &Self) -> bool {
        self.hash.eq(&other.hash)
    }
}
impl Eq for Index {}

impl PartialOrd for Index {
    fn partial_cmp(&self, other: &Self) -> Option<std::cmp::Ordering> {
        Some(self.cmp(other))
    }
}

impl Ord for Index {
    fn cmp(&self, other: &Self) -> std::cmp::Ordering {
        self.hash.cmp(&other.hash)
    }
}

fn find_in_file(file: &mut File, hash: u64) -> Result<Option<String>> {
    let map = unsafe { Mmap::map(file)? };
    let n = read_u64(&map)? as usize;

    if n == 0 {
        return Ok(None);
    }

    // binary search for hash
    let mut lo: usize = 0;
    let mut hi: usize = n - 1;

    let mut index: Option<Index> = None;

    // binary search because I can
    while lo <= hi && index.is_none() {
        let mid = lo + (hi - lo) / 2;
        let mid_offset = 8 + 32 * mid;
        let mid_hash = read_u64(&map[mid_offset..])?;

        match mid_hash.cmp(&hash) {
            std::cmp::Ordering::Equal => {
                let offset = read_u64(&map[mid_offset + 8..])? as usize;
                let len = read_u64(&map[mid_offset + 16..])? as usize;
                let timestamp = read_u64(&map[mid_offset + 24..])?;

                index = Some(Index {
                    hash,
                    offset,
                    len,
                    timestamp,
                });
            }
            std::cmp::Ordering::Less => lo = mid + 1,
            std::cmp::Ordering::Greater => {
                // prevents underflow
                if mid == 0 {
                    break;
                }
                hi = mid - 1
            }
        }
    }

    let Some(index) = index else { return Ok(None) };

    // TODO: if index.timestamp > expiry then return Ok(None)

    let v = &map[index.offset..index.offset + index.len];
    let s = String::from_utf8(Vec::from(v))?;
    Ok(Some(s))
}

fn write_to_file<V: Serialize>(f: &mut BufWriter<File>, inds: &BTreeMap<Index, V>) -> Result<()> {
    write_u64(f, inds.len() as u64)?;

    let mut offset = 8 + inds.len() * 32;
    let mut values = Vec::new();
    for (ind, v) in inds.iter() {
        let data = serde_json::to_string(v)?;
        let ind = Index {
            hash: ind.hash,
            len: data.len(),
            offset,
            timestamp: ind.timestamp,
        };
        ind.write_to_file(f)?;
        offset += data.len();
        values.push(data);
    }

    for v in values {
        ensure!(f.write(v.as_bytes())? == v.len());
    }

    Ok(())
}

fn read_from_file<V: DeserializeOwned, P: AsRef<Path>>(path: P) -> Result<BTreeMap<Index, V>> {
    let mut cache: BTreeMap<Index, V> = BTreeMap::new();
    let f = File::open(path)?;
    if f.metadata()?.len() == 0 {
        return Ok(BTreeMap::new());
    }
    let map = unsafe { Mmap::map(&f)? };
    let size = u64::from_le_bytes(map[0..8].try_into()?) as usize;

    for i in 0..size {
        let ind = Index::read_from_bytes(&map[8 + i * 32..])?;
        let data_str = &map[ind.offset..ind.offset + ind.len];
        let data = serde_json::from_slice(data_str)?;
        cache.insert(ind, data);
    }

    Ok(cache)
}

#[derive(Debug, Clone)]
pub struct Cache<K, V> {
    path: PathBuf,
    // tmpdir_path is files that have been written but not merged into main cache
    tmpdir_path: PathBuf,
    // tmpdir_path2 is temporary files that are partially written (to make sure that writes are atomic)
    tmpdir_path2: PathBuf,

    // need these two in order to allow us to have generics
    phantom_key: PhantomData<K>,
    phantom_val: PhantomData<V>,
}

impl<K: Hash + Debug, V: Serialize + DeserializeOwned> Cache<K, V> {
    // TODO: make this a config struct parameter instead of just path
    pub fn new<P: AsRef<Path>>(path: P) -> Result<Self> {
        let path = canonicalize(path.as_ref())?;
        OpenOptions::new().create(true).append(true).open(&path)?;
        let tmpdir_path = PathBuf::from(
            path.as_os_str()
                .to_str()
                .expect("couldnt create os str from path")
                .to_string()
                + ".tmp",
        );
        fs::create_dir_all(&tmpdir_path)?;
        let tmpdir_path2 = PathBuf::from(
            path.as_os_str()
                .to_str()
                .expect("couldnt create os str from path")
                .to_string()
                + ".tmp2",
        );
        fs::create_dir_all(&tmpdir_path2)?;
        Ok(Self {
            path,
            tmpdir_path,
            tmpdir_path2,
            phantom_key: PhantomData,
            phantom_val: PhantomData,
        })
    }

    // using to try to make sure that directory read is atomic
    // TODO: not sure how read_dir works, need to figure that out
    fn get_files(&self) -> Result<Vec<PathBuf>> {
        let dir = read_dir(&self.tmpdir_path)?;
        let mut v = Vec::new();
        for d in dir {
            let d = d?;
            v.push(d.path().to_path_buf());
        }
        Ok(v)
    }

    pub fn insert(&mut self, k: K, v: V) -> Result<()> {
        let hash = {
            let mut hasher = DefaultHasher::new();
            k.hash(&mut hasher);
            hasher.finish()
        };

        let data = serde_json::to_string(&v)?;

        /*
        first check if file lock exists
        if exists, create tmp file with new data, and done
        if not exists:
        create file lock
        read whole main cache to memory
        insert new kv pair
        read each of the tmp files, insert each of them into map
        write new cache to file
        delete file lock
         */

        let cache_file = File::open(&self.path);

        let lock = cache_file?.try_lock_exclusive();

        if lock.is_ok() {
            println!("locked {:?}", k);
            println!(
                "trying to lock exclusive {k:?}: {:?}",
                File::open(&self.path)?.try_lock_exclusive()
            );

            // locking succeeded

            let mut cache = BTreeMap::new();

            // let _ = stdin().lock().read(&mut [0u8]).unwrap();

            let dir = self.get_files()?;

            let mut c = read_from_file(&self.path)?;
            cache.append(&mut c);

            for path in &dir {
                let mut c = read_from_file(path)?;
                cache.append(&mut c);
            }

            println!("created merge {k:?}");
            println!(
                "trying to lock exclusive {k:?}: {:?}",
                File::open(&self.path)?.try_lock_exclusive()
            );

            let k_hash = {
                let mut hasher = DefaultHasher::new();
                k.hash(&mut hasher);
                hasher.finish()
            };
            cache.insert(
                Index {
                    hash: k_hash,
                    offset: 0,
                    len: 0,
                    timestamp: SystemTime::now().duration_since(UNIX_EPOCH)?.as_secs(),
                },
                v,
            );

            let named2 = NamedTempFile::new_in(&self.tmpdir_path2)?;
            let tmpfile = named2.reopen()?;
            let mut writer = BufWriter::new(tmpfile);
            write_to_file(&mut writer, &cache)?;
            println!("wrote to tmp {k:?}");
            println!(
                "trying to lock exclusive {k:?}: {:?}",
                File::open(&self.path)?.try_lock_exclusive()
            );

            rename(named2, &self.path)?;

            println!("renamed {k:?}");
            println!(
                "trying to lock exclusive {k:?}: {:?}",
                File::open(&self.path)?.try_lock_exclusive()
            );

            for path in &dir {
                remove_file(path).ok(); // its fine if the file was already deleted
            }

            println!("removed all files {k:?}");
            println!(
                "trying to lock exclusive {k:?}: {:?}",
                File::open(&self.path)?.try_lock_exclusive()
            );
        } else {
            // locking failed - need to create temporary file
            let (f, fname2) = NamedTempFile::new_in(&self.tmpdir_path2)?.keep()?;
            let mut bufwriter = BufWriter::new(f);

            write_u64(&mut bufwriter, 1u64)?;

            let ind = Index {
                hash,
                offset: 40,
                len: data.len(),
                timestamp: SystemTime::now().duration_since(UNIX_EPOCH)?.as_secs(),
            };
            ind.write_to_file(&mut bufwriter)?;

            let buf = data.as_bytes();
            ensure!(bufwriter.write(buf)? == data.len());
            drop(bufwriter);

            let fname = NamedTempFile::new_in(&self.tmpdir_path)?.keep()?;
            rename(fname2, fname.1)?;
        }

        Ok(())
    }

    pub fn get(&self, k: K) -> Result<Option<V>> {
        let hash = {
            let mut hasher = DefaultHasher::new();
            k.hash(&mut hasher);
            hasher.finish()
        };

        let mut f = File::open(&self.path)?;

        if let Some(data) = find_in_file(&mut f, hash)? {
            let v = serde_json::from_str(&data)?;
            Ok(Some(v))
        } else {
            let dir = self.get_files()?;

            for entry in dir {
                let entry = entry.as_path();
                let mut f = File::open(entry)?;

                if let Some(data) = find_in_file(&mut f, hash)? {
                    let v = serde_json::from_str(&data)?;
                    return Ok(Some(v));
                }
            }

            Ok(None)
        }
    }

    pub fn collect(&self) -> Result<BTreeMap<Index, V>> {
        let mut cache = BTreeMap::new();
        let dir = self.get_files()?;

        for path in dir {
            let mut c = read_from_file(&path)?;
            cache.append(&mut c);
        }
        Ok(cache)
    }
}
