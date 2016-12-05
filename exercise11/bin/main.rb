require_relative '../lib/task.rb'

task = Task.new
row = 0
task.pascal(6) do |item, r| 
  puts "" if not row == r
  print "#{item},"   
  row = r
end
