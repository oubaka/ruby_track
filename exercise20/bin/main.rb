require_relative '../lib/task.rb'

task = Task.new

begin
  puts task.factorial(-3)
rescue => exception
  puts exception
end

puts task.factorial(-3)
