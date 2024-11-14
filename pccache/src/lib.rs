use std::{
    collections::BTreeMap,
    fmt::Debug,
    fs::{canonicalize, read_dir, remove_file, DirEntry, File, OpenOptions},
    hash::{DefaultHasher, Hash, Hasher},
    io::{stdin, Read, Seek, Write},
    ops::Add,
    path::PathBuf,
    sync::OnceLock,
    time::{Duration, SystemTime, UNIX_EPOCH},
};

use anyhow::{anyhow, ensure};
use fs4::fs_std::FileExt;
use memmap::Mmap;
use serde::{de::DeserializeOwned, Serialize};
use tempfile::NamedTempFile;

type Res<R> = anyhow::Result<R>;

#[derive(Debug, Default)]
pub struct Config {
    cache_path: PathBuf,
    expiry_time: Option<Duration>,
}

impl Config {
    pub fn new(cache_path: PathBuf, expiry_time: Option<Duration>) -> Self {
        Config {
            cache_path,
            expiry_time,
        }
    }
}

static CONFIG: OnceLock<Config> = OnceLock::new();

pub fn set_config(cfg: Config) -> Res<()> {
    CONFIG.set(cfg).map_err(|_| anyhow!("couldnt set config"))
}

pub fn get<K, V>(k: K) -> Res<Option<V>>
where
    K: Hash,
    V: DeserializeOwned,
{
    let hash = {
        let mut hasher = DefaultHasher::new();
        k.hash(&mut hasher);
        hasher.finish()
    };

    let cache_path = &CONFIG.get().ok_or(anyhow!("config not set"))?.cache_path;

    let mut f = File::open(cache_path)?;

    if let Some(data) = find_in_file(&mut f, hash)? {
        let v = serde_json::from_str(&data)?;
        Ok(Some(v))
    } else {
        let canon = canonicalize(cache_path)?;
        let par = &canon
            .parent()
            .ok_or(anyhow!("couldnt get containing folder of cache file"))?;

        let dir: Vec<std::io::Result<DirEntry>> = read_dir(par)?
            .filter(|entry| match &entry {
                Ok(d) => d.path().ends_with(cache_path),
                Err(_) => false,
            })
            .collect();

        for entry in dir {
            let entry = entry?.path();
            let mut f = File::open(entry)?;

            if let Some(data) = find_in_file(&mut f, hash)? {
                let v = serde_json::from_str(&data)?;
                return Ok(Some(v));
            }
        }

        Ok(None)
    }
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
struct Index {
    hash: u64,
    offset: usize,
    len: usize,
    timestamp: u64,
}

impl Index {
    fn write_to_file(&self, f: &mut File) -> Res<()> {
        let buf = self.hash.to_le_bytes();
        ensure!(f.write(&buf)? == 8);
        let buf = self.offset.to_le_bytes();
        ensure!(f.write(&buf)? == 8);
        let buf = self.len.to_le_bytes();
        ensure!(f.write(&buf)? == 8);
        let buf = self.timestamp.to_le_bytes();
        ensure!(f.write(&buf)? == 8);
        Ok(())
    }

    fn read_from_bytes(bytes: &[u8]) -> Res<Self> {
        let hash = u64::from_le_bytes(bytes[0..8].try_into()?);
        let offset = u64::from_le_bytes(bytes[8..16].try_into()?) as usize;
        let len = u64::from_le_bytes(bytes[16..24].try_into()?) as usize;
        let timestamp = u64::from_le_bytes(bytes[24..32].try_into()?);
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

fn find_in_file(file: &mut File, hash: u64) -> Res<Option<String>> {
    let map = unsafe { Mmap::map(file)? };
    let n = u64::from_le_bytes(map[0..8].try_into()?) as usize;

    // binary search for hash
    let mut lo: usize = 0;
    let mut hi: usize = n - 1;

    let mut index: Option<Index> = None;

    // binary search because I can
    while lo <= hi && index.is_none() {
        let mid = lo + (hi - lo) / 2;
        let mid_offset = 8 + 32 * mid;
        let mid_hash = u64::from_le_bytes(map[mid_offset..mid_offset + 8].try_into()?);
        match mid_hash.cmp(&hash) {
            std::cmp::Ordering::Equal => {
                let offset =
                    u64::from_le_bytes(map[mid_offset + 8..mid_offset + 16].try_into()?) as usize;
                let len =
                    u64::from_le_bytes(map[mid_offset + 16..mid_offset + 24].try_into()?) as usize;
                let timestamp =
                    u64::from_le_bytes(map[mid_offset + 24..mid_offset + 32].try_into()?);
                index = Some(Index {
                    hash,
                    offset,
                    len,
                    timestamp,
                });
            }
            std::cmp::Ordering::Less => lo = mid + 1,
            std::cmp::Ordering::Greater => {
                if hi == 0 {
                    break;
                }
                hi = mid - 1
            }
        }
    }

    let Some(index) = index else { return Ok(None) };

    // if index.timestamp > expiry then return Ok(None)

    let v = &map[index.offset..index.offset + index.len];
    let s = String::from_utf8(Vec::from(v))?;
    Ok(Some(s))
}

pub fn insert<K, V>(k: K, v: V) -> Res<()>
where
    K: Hash,
    V: Serialize + DeserializeOwned + Debug,
{
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

    let cache_path = &CONFIG.get().ok_or(anyhow!("config not set"))?.cache_path;
    let mut cache_file = if !cache_path.exists() {
        let mut f = File::create(cache_path)?;
        ensure!(f.write(&0u64.to_le_bytes())? == 8);
        f
    } else {
        OpenOptions::new().write(true).read(true).open(cache_path)?
    };

    let canon = canonicalize(cache_path)?;
    let par = canon
        .parent()
        .ok_or(anyhow!("couldnt get containing folder of cache file"))?;

    if cache_file.try_lock_exclusive().is_err() {
        // locked
        println!("locked");
        let (mut f, path) = NamedTempFile::with_suffix_in(
            cache_path
                .to_str()
                .ok_or(anyhow!("couldnt create tmp file path"))?,
            par,
        )?
        .keep()?;
        println!("{path:?}");
        let buf = 1u64.to_le_bytes();
        ensure!(f.write(&buf)? == 8);
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
        // not locked, now locked
        let mut cache = Cache::<V>::new();

        // let _ = stdin().lock().read(&mut [0u8]).unwrap();

        let dir: Vec<std::io::Result<DirEntry>> = read_dir(par)?
            .filter(|entry| match &entry {
                Ok(d) => d.path().ends_with(cache_path),
                Err(_) => false,
            })
            .collect();

        for entry in dir {
            let path = entry?.path();
            let mut f = File::open(&path)?;
            let c = read_file::<V>(&mut f)?;
            cache = cache + c;
            if path != *canon {
                remove_file(&path)?;
            }
        }

        let k_hash = {
            let mut hasher = DefaultHasher::new();
            k.hash(&mut hasher);
            hasher.finish()
        };
        cache.inds.insert(
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
        write_to_file(&mut cache_file, &mut cache)?;
    }

    Ok(())
}

#[derive(Debug)]
struct Cache<V> {
    inds: BTreeMap<Index, V>,
}

impl<V> Cache<V> {
    fn new() -> Self {
        Self {
            inds: BTreeMap::new(),
        }
    }
}

impl<V> Add for Cache<V> {
    type Output = Self;
    fn add(mut self, mut rhs: Self) -> Self::Output {
        self.inds.append(&mut rhs.inds);
        Self { inds: self.inds }
    }
}

fn read_file<V: DeserializeOwned>(f: &mut File) -> Res<Cache<V>> {
    let mut cache = Cache::new();
    let map = unsafe { Mmap::map(f)? };
    let size = u64::from_le_bytes(map[0..8].try_into()?) as usize;

    for i in 0..size {
        let ind = Index::read_from_bytes(&map[8 + i * 32..])?;
        let data_str = &map[ind.offset..ind.offset + ind.len];
        let data = serde_json::from_slice::<V>(data_str)?;
        cache.inds.insert(ind, data);
    }

    Ok(cache)
}

fn write_to_file<V: Serialize>(f: &mut File, cache: &mut Cache<V>) -> Res<()> {
    let bytes = cache.inds.len().to_le_bytes();
    ensure!(f.write(&bytes)? == 8);

    let mut offset = 8 + cache.inds.len() * 32;
    let mut values = Vec::new();
    for (ind, v) in cache.inds.iter_mut() {
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
