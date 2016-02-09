# Ruby/Rust FFI Example

Ruby/Rust FFI Example borrowed from the excellent [Rust 
Book](https://doc.rust-lang.org/book/rust-inside-other-languages.html).

Tested only on the following:
```
ruby 2.3.0
rust 1.6.0
cargo 0.8.0
```

Should compile just fine on Linux and Mac OS x. No Windows support, 
sorry.

### Run it yourself
Make sure you have the above installed, then:
1. Clone the repo
2. `bundle install`
3. `rake build_and_bench`
4. Receive benchmarks
