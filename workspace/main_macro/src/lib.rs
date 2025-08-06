use proc_macro::TokenStream;
use quote::quote;
use syn::{parse_macro_input, ItemFn};

#[proc_macro_attribute]
pub fn main_macro(_attr: TokenStream, item: TokenStream) -> TokenStream {
    let input = parse_macro_input!(item as ItemFn);

    let vis = &input.vis;
    let sig = &input.sig;
    let block = &input.block;

    let expanded = quote! {
        #vis #sig {
            for i in 0..10 {
                #block
            }
        }
    };

    TokenStream::from(expanded)
}

