fn main(){
    let c = 'é';
    println!("{}", c.len_utf16()); // 2 bytes
    println!("{}", c.is_alphabetic()); // true
}
