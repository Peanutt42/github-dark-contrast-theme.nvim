// Code example from VSCode Themes (https://vscodethemes.com)

struct Point {
    x: f64,
}

impl Point {
    // Calculate the difference and square root
    fn calc(&self, other: &Point) -> f64 {
        (self.x - other.x).abs().sqrt()
    }
}

fn main() {
    let p = Point { x: 4.0 };

    println!("Calc: {:.2}", p.calc(&Point { x: 2.0 }));
}
