require 'benchmark'
require 'thread'
require 'ffi'

class RubyLoop
  def self.process
    threads = []

    10.times do
      threads << Thread.new do
        count = 0

        5_000_000.times do
          count += 1
        end

        count
      end
    end

    threads.each do |t|
      t.value
    end
  end
end

class RustLoop
  extend FFI::Library
  libext = `uname` =~ /Darwin/ ? 'dylib' : 'so'
  ffi_lib "target/release/libffi_example.#{libext}"
  attach_function :process, [], :void
end

Benchmark.bm(10) do |loop|
  loop.report("RubyLoop")  { RubyLoop.process }
  loop.report("RustLoop")  { RustLoop.process }
end
