fn main() {
    println!("Hello, world!");
}

fn bad(something: &str) -> &str {
    let s = String::from("hello");
    &s
}
