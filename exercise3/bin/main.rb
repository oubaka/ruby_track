require_relative '../lib/fibonacci.rb'

# Fibonacci
fib = Fibonacci.new
fib.get(1000) {|x| print "#{x}," }
