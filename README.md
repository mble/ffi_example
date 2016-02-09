# Ruby/Rust FFI Example

Ruby/Rust FFI Example borrowed from the excellent [Rust 
Book](https://doc.rust-lang.org/book/rust-inside-other-languages.html).

Each implementation counts to 5 million (5,000,000) in each thread, and then returns 
the result of each thread. When all threads have returned, the task is 
complete. I'm using Ruby's `benchmark` to run this task 10 times and 
record the time taken for each implementation.

`RubyLoop` takes ~2.8s to complete, vs `RustLoop`'s 0.01s on a late-2013 
MacBook Pro.

Tested only on the following:
```
ruby 2.3.0
rust 1.6.0
cargo 0.8.0
```

Should compile just fine on Linux and Mac OS X. No Windows support, 
sorry.

### Run it yourself
Make sure you have the above installed, then:
- 1. Clone the repo
- 2. `bundle install`
- 3. `rake build_and_bench`
- 4. Receive benchmarks
