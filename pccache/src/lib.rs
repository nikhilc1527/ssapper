mod tests;

use std::{
    collections::BTreeMap,
    fmt::Debug,
    fs::{canonicalize, read_dir, remove_file, File, OpenOptions},
    hash::{DefaultHasher, Hash, Hasher},
    io::{Seek, Write},
    marker::PhantomData,
    path::{Path, PathBuf},
    time::{SystemTime, UNIX_EPOCH},
};

use anyhow::{anyhow, ensure};
use fs4::fs_std::FileExt;
use memmap::Mmap;
use serde::{de::DeserializeOwned, Serialize};
use tempfile::NamedTempFile;

type Result<R> = anyhow::Result<R>;

fn write_u64(f: &mut File, n: u64) -> Result<()> {
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
    hash: u64,
    offset: usize,
    len: usize,
    timestamp: u64,
}

impl Index {
    fn write_to_file(&self, f: &mut File) -> Result<()> {
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

fn write_to_file<V: Serialize>(f: &mut File, inds: &BTreeMap<Index, V>) -> Result<()> {
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
    phantom_key: PhantomData<K>,
    phantom_val: PhantomData<V>,
}

impl<K: Hash, V: Serialize + DeserializeOwned> Cache<K, V> {
    pub fn new<P: AsRef<Path>>(path: P) -> Self {
        let path = path.as_ref().to_path_buf();
        Self {
            path,
            phantom_key: PhantomData,
            phantom_val: PhantomData,
        }
    }

    fn get_files(&self) -> Result<Vec<PathBuf>> {
        let canon = canonicalize(&self.path)?;
        let par = canon.parent().ok_or(anyhow!("path doesnt have parent"))?;
        println!("path: {:?}", &self.path);
        let dir = read_dir(par)?.filter(|entry| match &entry {
            Ok(d) => d
                .path()
                .to_str()
                .unwrap()
                .ends_with(self.path.file_name().unwrap().to_str().unwrap()),
            Err(_) => false,
        });
        let mut v = Vec::new();
        for d in dir {
            let d = d?;
            println!("entry: {:?}", d);
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

        let mut cache_file = if !self.path.exists() {
            let mut f = File::create(&self.path)?;
            write_u64(&mut f, 0u64)?;
            f
        } else {
            OpenOptions::new().write(true).read(true).open(&self.path)?
        };
        if cache_file.metadata()?.len() == 0 {
            write_u64(&mut cache_file, 0u64)?;
        }

        let canon = canonicalize(&self.path)?;
        let par = canon
            .parent()
            .ok_or(anyhow!("couldnt get containing folder of cache file"))?;

        if cache_file.try_lock_exclusive().is_err() {
            // locking failed
            let (mut f, _) = NamedTempFile::with_suffix_in(
                self.path
                    .file_name()
                    .ok_or(anyhow!("couldnt make file name"))?
                    .to_str()
                    .ok_or(anyhow!("couldnt create tmp file path"))?,
                par,
            )?
            .keep()?;

            write_u64(&mut f, 1u64)?;

            let ind = Index {
                hash,
                offset: 40,
                len: data.len(),
                timestamp: SystemTime::now().duration_since(UNIX_EPOCH)?.as_secs(),
            };
            ind.write_to_file(&mut f)?;

            let buf = data.as_bytes();
            ensure!(f.write(buf)? == data.len());
        } else {
            // locking succeeded

            let mut cache = BTreeMap::new();

            // let _ = stdin().lock().read(&mut [0u8]).unwrap();

            let dir = self.get_files()?;

            for path in dir {
                let mut c = read_from_file(&path)?;
                cache.append(&mut c);

                if path != *canon {
                    remove_file(&path)?;
                }
            }

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

            cache_file.set_len(0)?;
            cache_file.rewind()?;
            write_to_file(&mut cache_file, &cache)?;
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
            println!("dir: {path:?}");
            let mut c = read_from_file(&path)?;
            cache.append(&mut c);
        }
        Ok(cache)
    }
}
