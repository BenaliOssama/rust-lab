fn main(){
    let c = 'é';
    println!("{}", c.len_utf8()); // 2 bytes
    println!("{}", c.is_alphabetic()); // true
}
