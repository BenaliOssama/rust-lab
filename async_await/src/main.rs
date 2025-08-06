use futures::executor::block_on;

async fn say_hello() {
    println!("step 1");
}

fn main() {
    println!("Step 0: Before creating future");

    let future = say_hello(); // creates the future

    println!("Step 1.5: After creating future, before block_on");

    block_on(future); // runs the async code

    println!("Step 2: After block_on");
}

