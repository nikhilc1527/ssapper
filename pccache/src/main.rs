use pccache::Cache;
use rayon::iter::{IntoParallelIterator, ParallelIterator};

fn main() -> anyhow::Result<()> {
    let mut cache = Cache::new("cache.db")?;
    // println!("created");
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
    // println!("{:?}", cache.get(7)?);

    (0..20).into_par_iter().for_each(|e| {
        cache
            .clone()
            .insert(e, e * 10)
            .expect(format!("couldnt insert {e}").as_str());
    });

    let mut c = cache
        .collect()?
        .into_iter()
        .map(|e| (e.0.hash, e.1))
        .collect::<Vec<_>>();
    c.sort_by(|a, b| a.1.cmp(&b.1));

    println!("{c:?}");

    Ok(())
}
