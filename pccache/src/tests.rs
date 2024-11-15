#![cfg(test)]

use anyhow::Result;
use rayon::iter::{IntoParallelIterator, ParallelIterator};
use tempfile::NamedTempFile;

use crate::Cache;

#[test]
fn insert_retrieve() -> Result<()> {
    let tmpfile = NamedTempFile::new()?;
    let mut cache = Cache::new(tmpfile.path());

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
fn par_insert_test() -> Result<()> {
    let tmpfile = NamedTempFile::new()?;
    let cache = Cache::new(tmpfile.path());

    let n = 10000;

    (0..n).into_par_iter().for_each(|i| {
        cache.clone().insert(i, i * 5).expect("failed");
    });

    for i in 0..n {
        let k = cache.get(i)?;
        println!("{k:?}");
        assert!(matches!(k, Some(x) if x == i * 5));
    }

    Ok(())
}
