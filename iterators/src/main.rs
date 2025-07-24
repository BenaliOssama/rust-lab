use std::any::type_name;

fn main() {
    let v1 = vec![1, 2, 3];

    let v1_iter = v1.iter();

    for val in v1_iter {
        type_of(val);
        println!("Got: {val}");
    }
}


fn type_of<T>(_: T){
    println!("{}", type_name::<T>());
}
