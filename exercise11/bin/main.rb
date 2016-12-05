require_relative '../lib/task.rb'

task = Task.new
task.pascal(6) {|item| puts "#{item},"}
