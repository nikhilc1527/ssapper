use pccache::Cache;
use rayon::iter::{IntoParallelIterator, ParallelIterator};

fn main() -> anyhow::Result<()> {
    let mut cache = Cache::new("cache.db");
    // cache.insert(4, 8)?;
    // cache.insert(5, 10)?;
    // cache.insert(6, 12)?;
    // cache.insert(1, 20)?;
    // cache.insert(1, 2)?;
    // cache.insert(2, 4)?;
    // cache.insert(3, 6)?;

    // println!("{:?}", cache.get(1)?);
    // println!("{:?}", cache.get(2)?);
    // println!("{:?}", cache.get(3)?);
    // println!("{:?}", cache.get(4)?);
    // println!("{:?}", cache.get(5)?);
    // println!("{:?}", cache.get(6)?);

    (0..3).into_par_iter().for_each(|n| {
        cache.clone().insert(n, n * 5).expect("failed");
    });

    let c = cache.collect();
    println!("{c:?}");

    Ok(())
}
