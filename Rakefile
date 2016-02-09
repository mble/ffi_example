desc 'compile static lib and run benchmarks'
task :build_and_bench do
  puts "\x1b[36mCompiling static Rust library\x1b[0m"
  system 'cargo build -v --release'
  puts "\n\x1b[36mRunning benchmarks\x1b[0m"
  system 'ruby ffi_example.rb'
end
