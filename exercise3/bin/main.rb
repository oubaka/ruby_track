require_relative '../lib/task.rb'

# Fibonacci
task = Task.new
task.fib(1000) {|x| print "#{x}," }
