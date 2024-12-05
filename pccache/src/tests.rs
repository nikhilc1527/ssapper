#![cfg(test)]

use std::{
    io::{stdin, Read},
    sync::{Arc, Mutex},
    time::Instant,
};

use anyhow::Result;
use rayon::iter::{IntoParallelIterator, ParallelIterator};
use semaphore::Semaphore;
use tempfile::NamedTempFile;

use crate::Cache;

#[test]
fn insert_retrieve() -> Result<()> {
    let tmpfile = NamedTempFile::new()?;
    let mut cache = Cache::new(tmpfile.path())?;

    cache.insert(1, 2)?;
    cache.insert(2, 4)?;
    cache.insert(3, 6)?;
    cache.insert(4, 8)?;

    assert!(matches!(cache.get(1)?, Some(2)));
    assert!(matches!(cache.get(2)?, Some(4)));
    assert!(matches!(cache.get(3)?, Some(6)));
    assert!(matches!(cache.get(4)?, Some(8)));

    assert!(cache.get(5)?.is_none());

    Ok(())
}

#[test]
fn seq_insert_test() -> Result<()> {
    let tmpfile = NamedTempFile::new()?;
    let cache = Cache::new(tmpfile.path())?;

    let n = 100;

    (0..n).for_each(|i| {
        let s1 = Instant::now();
        cache.clone().insert(i, i * 5).expect("failed");
        println!("inserted {i} - {:?}", s1.elapsed());
    });

    for i in 0..n {
        let k = cache.get(i)?;
        println!("{k:?}");
        assert!(matches!(k, Some(x) if x == i * 5));
    }

    Ok(())
}

#[test]
fn par_insert_test() -> Result<()> {
    let tmpfile = NamedTempFile::new()?;
    let cache = Semaphore::new(10, Cache::new(tmpfile.path())?);

    let n = 100;

    let mut r = true;
    (0..n).into_par_iter().for_each(|i| loop {
        if let Ok(cache) = cache.try_access() {
            cache.clone().insert(i, i * 5).expect("failed");
            break;
        }
    });

    println!("inserted");

    let cache = cache.try_access().unwrap();

    for i in 0..n {
        let k = cache.get(i)?;
        let m = matches!(k, Some(x) if x == i * 5);
        println!("{i} - {k:?}");

        r = r && m;
    }
    assert!(r);

    // println!("{:?}", cache.try_access().unwrap().collect()?);

    Ok(())
}

#[test]
#[ignore = "fix later"]
fn par_insert_and_get_test() -> Result<()> {
    let tmpfile = NamedTempFile::new()?;
    let cache = Cache::new(tmpfile.path())?;

    let n = 100;

    (0..n).into_par_iter().for_each(|i| {
        cache.clone().insert(i, i * 5).expect("failed");
        let k = cache.get(i).expect("couldnt get");
        let m = matches!(k, Some(x) if x == i * 5);
        assert!(m);
    });

    let mut r = true;
    for i in 0..n {
        let k = cache.get(i)?;
        let m = matches!(k, Some(x) if x == i * 5);
        if !m {
            println!("{i} - {k:?}");
        }
        r = r && m;
    }

    assert!(r);

    Ok(())
}

#[test]
fn sync_insert_and_get_test() -> Result<()> {
    let tmpfile = NamedTempFile::new()?;
    let cache = Cache::new(tmpfile.path())?;

    let n = 100;

    let s1 = Instant::now();
    (0..n).for_each(|i| {
        cache.clone().insert(i, i * 5).expect("failed");
        let k = cache.get(i).expect("couldnt get");
        // let m = matches!(k, Some(x) if x == i * 5);
        // assert!(m);
    });
    println!("{:?}", s1.elapsed());

    let mut r = true;
    for i in 0..n {
        let k = cache.get(i)?;
        let m = matches!(k, Some(x) if x == i * 5);
        if !m {
            println!("{i} - {k:?}");
        }
        r = r && m;
    }

    assert!(r);

    Ok(())
}
