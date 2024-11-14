use pccache::{get, insert, set_config, Config};

fn main() -> anyhow::Result<()> {
    set_config(Config::new("cache.db".into(), None))?;
    // insert(4, 8)?;
    // insert(5, 10)?;
    // insert(6, 12)?;
    insert(1, 20)?;
    // insert(1, 2)?;
    // insert(2, 4)?;
    // insert(3, 6)?;

    println!("{:?}", get::<i32, i32>(1)?);
    println!("{:?}", get::<i32, i32>(2)?);
    println!("{:?}", get::<i32, i32>(3)?);
    println!("{:?}", get::<i32, i32>(4)?);
    println!("{:?}", get::<i32, i32>(5)?);
    println!("{:?}", get::<i32, i32>(6)?);

    Ok(())
}
