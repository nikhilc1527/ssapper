mod tests;

use std::{
    collections::BTreeMap,
    fmt::Debug,
    fs::{self, canonicalize, read_dir, remove_file, rename, File},
    hash::{DefaultHasher, Hash, Hasher},
    marker::PhantomData,
    path::{Path, PathBuf},
};

use heed::{Database, Env, EnvFlags, EnvOpenOptions};
use serde::{de::DeserializeOwned, Serialize};
use tempfile::NamedTempFile;

type Result<R> = anyhow::Result<R>;

// global mutable lazy lock of hashmap from file path to rwlock type

type DB = Database<heed::types::U64<heed::byteorder::BigEndian>, heed::types::Str>;

#[derive(Debug, Clone)]
pub struct Cache<K, V> {
    path: PathBuf,
    // tmpdir_path is files that have been written but not merged into main cache
    tmpdir_path: PathBuf,
    // tmpdir_path2 is temporary files that are partially written (to make sure that writes are atomic)
    tmpdir_path2: PathBuf,

    lockpath: PathBuf,

    // need these two in order to allow us to have generics
    phantom_key: PhantomData<K>,
    phantom_val: PhantomData<V>,
}

fn open_env<P: AsRef<Path>>(p: P) -> Result<Env> {
    Ok(unsafe {
        EnvOpenOptions::new()
            .flags(EnvFlags::NO_SUB_DIR | EnvFlags::NO_LOCK)
            .open(p)?
    })
}

impl<K: Hash + Debug, V: Serialize + DeserializeOwned> Cache<K, V> {
    // TODO: make this a config struct parameter instead of just path
    pub fn new<P: AsRef<Path>>(path: P) -> Result<Self> {
        File::create(&path)?;
        let path = canonicalize(path.as_ref())?;

        let lockpath = PathBuf::from(
            path.as_os_str()
                .to_str()
                .expect("couldnt create os str from path")
                .to_string()
                + ".lock",
        );
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
            lockpath,
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
        v.push(self.path.to_path_buf());
        Ok(v)
    }

    fn create_tmp(&self, hash: u64, data: &str) -> Result<PathBuf> {
        let (_f, named2) = NamedTempFile::new_in(&self.tmpdir_path2)?.keep()?;

        let env = open_env(&named2)?;

        let mut wtx = env.write_txn()?;
        let db: DB = env.create_database(&mut wtx, None)?;

        let dir = self.get_files()?;

        for path in &dir {
            if *path != named2 {
                let env2 = open_env(path)?;

                let txn = env2.read_txn()?;

                let db2: DB = env2
                    .open_database(&txn, None)?
                    .expect("default db doesnt exist");
                for x in db2.iter(&txn)? {
                    let x = x?;
                    db.put(&mut wtx, &x.0, x.1)?;
                }

                txn.commit()?;

                env2.prepare_for_closing().wait();
            }

            // txn.commit()?;}
        }

        db.put(&mut wtx, &hash, data)?;
        wtx.commit()?;

        env.prepare_for_closing().wait();

        Ok(named2)
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

        let lock = File::create_new(&self.lockpath);

        if lock.is_ok() {
            // locking succeeded

            // let _ = stdin().lock().read(&mut [0u8]).unwrap();

            // let txn = env.read_txn()?;
            // let db: DB = env.open_database(&txn, None)?.expect("");
            // txn.commit()?;

            let k_hash = {
                let mut hasher = DefaultHasher::new();
                k.hash(&mut hasher);
                hasher.finish()
            };

            let data = serde_json::to_string(&v)?;

            let named2 = self.create_tmp(k_hash, &data)?;

            rename(&named2, &self.path)?;

            // let env = open_env(&self.path)?;
            // let txn = env.read_txn()?;
            // let db: DB = env.open_database(&txn, None)?.expect("");
            // txn.commit()?;

            // for path in &dir {
            //     if path != &self.path {
            //         remove_file(path).ok(); // ignore error, its fine if the file was already deleted
            //     }
            // }

            remove_file(&self.lockpath)?;
        } else {
            // locking failed - need to create WAL
            let (f, tmp2) = NamedTempFile::new_in(&self.tmpdir_path2)?.keep()?;
            drop(f);

            let env = open_env(&tmp2)?;

            let mut wtx = env.write_txn()?;
            let db: DB = env
                .open_database(&wtx, None)?
                .expect("default db doesnt exist");

            db.put(&mut wtx, &hash, &data)?;
            wtx.commit()?;

            env.prepare_for_closing().wait();

            let fname = tempfile::Builder::new()
                .keep(true)
                .tempfile_in(&self.tmpdir_path)?;

            rename(&tmp2, fname)?;
        }

        Ok(())
    }

    pub fn get(&self, k: K) -> Result<Option<V>> {
        let k_hash = {
            let mut hasher = DefaultHasher::new();
            k.hash(&mut hasher);
            hasher.finish()
        };

        let files = self.get_files()?;

        for f in &files {
            let env = open_env(f)?;

            let txn = env.read_txn()?;
            let db: DB = env.open_database(&txn, None)?.expect("no default db");

            {
                let mut i = db.iter(&txn)?;
                if let Some(z) = i.find(|x| x.as_ref().is_ok_and(|y| y.0 == k_hash)) {
                    let v = serde_json::from_str(z.unwrap().1)?;
                    return Ok(Some(v));
                }
            }

            txn.commit()?;

            env.prepare_for_closing().wait();
        }

        Ok(None)
    }

    pub fn collect(&self) -> Result<BTreeMap<u64, V>> {
        let files = self.get_files()?;
        let mut cache = BTreeMap::new();

        for f in &files {
            let env = open_env(f)?;

            let txn = env.read_txn()?;
            let db: DB = env.open_database(&txn, None)?.expect("no default db");

            for i in db.iter(&txn)? {
                let i = i?;
                let v = serde_json::from_str(i.1)?;
                cache.insert(i.0, v);
            }
            txn.commit()?;

            env.prepare_for_closing().wait();
        }

        Ok(cache)
    }
}
// impl<K: Hash + Debug, V: Serialize + DeserializeOwned> Cache<K, V> {
//     // TODO: make this a config struct parameter instead of just path
//     pub fn new<P: AsRef<Path>>(path: P) -> Result<Self> {
//         if let Ok(f) = File::create_new(&path) {
//             println!("created new path");
//             let mut w = BufWriter::new(f);
//             write_u64(&mut w, 0u64)?;
//         }
//         let path = canonicalize(path.as_ref())?;
//         let lockpath = PathBuf::from(
//             path.as_os_str()
//                 .to_str()
//                 .expect("couldnt create os str from path")
//                 .to_string()
//                 + ".lock",
//         );
//         let tmpdir_path = PathBuf::from(
//             path.as_os_str()
//                 .to_str()
//                 .expect("couldnt create os str from path")
//                 .to_string()
//                 + ".tmp",
//         );
//         fs::create_dir_all(&tmpdir_path)?;
//         let tmpdir_path2 = PathBuf::from(
//             path.as_os_str()
//                 .to_str()
//                 .expect("couldnt create os str from path")
//                 .to_string()
//                 + ".tmp2",
//         );
//         fs::create_dir_all(&tmpdir_path2)?;
//         Ok(Self {
//             path,
//             tmpdir_path,
//             tmpdir_path2,
//             lockpath,
//             phantom_key: PhantomData,
//             phantom_val: PhantomData,
//         })
//     }

//     // using to try to make sure that directory read is atomic
//     // TODO: not sure how read_dir works, need to figure that out
//     fn get_files(&self) -> Result<Vec<PathBuf>> {
//         let dir = read_dir(&self.tmpdir_path)?;
//         let mut v = Vec::new();
//         for d in dir {
//             let d = d?;
//             v.push(d.path().to_path_buf());
//         }
//         v.push(self.path.to_path_buf());
//         Ok(v)
//     }

//     pub fn insert(&mut self, k: K, v: V) -> Result<()> {
//         let hash = {
//             let mut hasher = DefaultHasher::new();
//             k.hash(&mut hasher);
//             hasher.finish()
//         };

//         let data = serde_json::to_string(&v)?;

//         /*
//         first check if file lock exists
//         if exists, create tmp file with new data, and done
//         if not exists:
//         create file lock
//         read whole main cache to memory
//         insert new kv pair
//         read each of the tmp files, insert each of them into map
//         write new cache to file
//         delete file lock
//          */
//         let lock = File::create_new(&self.lockpath);

//         if lock.is_ok() {
//             // locking succeeded

//             let mut cache = BTreeMap::new();

//             // let _ = stdin().lock().read(&mut [0u8]).unwrap();

//             let dir = self.get_files()?;

//             for path in &dir {
//                 let mut c = read_from_file(path)?;
//                 cache.append(&mut c);
//             }

//             let k_hash = {
//                 let mut hasher = DefaultHasher::new();
//                 k.hash(&mut hasher);
//                 hasher.finish()
//             };
//             cache.insert(
//                 Index {
//                     hash: k_hash,
//                     offset: 0,
//                     len: 0,
//                     timestamp: SystemTime::now().duration_since(UNIX_EPOCH)?.as_secs(),
//                 },
//                 v,
//             );

//             let named2 = NamedTempFile::new_in(&self.tmpdir_path2)?;
//             let tmpfile = named2.reopen()?;
//             let mut writer = BufWriter::new(tmpfile);
//             write_to_file(&mut writer, &cache)?;

//             rename(named2, &self.path)?;

//             for path in &dir {
//                 if path != &self.path {
//                     remove_file(path).ok(); // ignore error, its fine if the file was already deleted
//                 }
//             }

//             remove_file(&self.lockpath)?;
//         } else {
//             // locking failed - need to create WAL
//             let (f, fname2) = NamedTempFile::new_in(&self.tmpdir_path2)?.keep()?;
//             let mut bufwriter = BufWriter::new(f);

//             write_u64(&mut bufwriter, 1u64)?;

//             let ind = Index {
//                 hash,
//                 offset: 40,
//                 len: data.len(),
//                 timestamp: SystemTime::now().duration_since(UNIX_EPOCH)?.as_secs(),
//             };
//             ind.write_to_file(&mut bufwriter)?;

//             let buf = data.as_bytes();
//             ensure!(bufwriter.write(buf)? == data.len());
//             drop(bufwriter);

//             let fname = NamedTempFile::new_in(&self.tmpdir_path)?.keep()?;
//             rename(fname2, fname.1)?;
//         }

//         Ok(())
//     }

//     pub fn get(&self, k: K) -> Result<Option<V>> {
//         let hash = {
//             let mut hasher = DefaultHasher::new();
//             k.hash(&mut hasher);
//             hasher.finish()
//         };

//         let mut f = File::open(&self.path)?;

//         if let Some(data) = find_in_file(&mut f, hash)? {
//             let v = serde_json::from_str(&data)?;
//             Ok(Some(v))
//         } else {
//             let dir = self.get_files()?;

//             for entry in dir {
//                 let entry = entry.as_path();
//                 if let Ok(mut f) = File::open(entry) {
//                     if let Some(data) = find_in_file(&mut f, hash)? {
//                         let v = serde_json::from_str(&data)?;
//                         return Ok(Some(v));
//                     }
//                 }
//             }

//             Ok(None)
//         }
//     }

//     pub fn collect(&self) -> Result<BTreeMap<Index, V>> {
//         let mut cache = BTreeMap::new();
//         let dir = self.get_files()?;

//         for path in dir {
//             let mut c = read_from_file(&path);
//             match c {
//                 Ok(mut c) => cache.append(&mut c),
//                 Err(e) => panic!("couldnt open file {:?}", path),
//             }
//         }
//         Ok(cache)
//     }
// }
