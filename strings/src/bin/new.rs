fn main(){
    let str = "something"; 
    println!("{}", str);
    let mut ss = String::from(str);
    
    let mut result = String::new();

    for s in ss.chars() {
        if s ==  't' {
            for c in ""
        }
        result.push(s);
    }
    println!("{result}");
}
