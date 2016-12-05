require_relative '../lib/task.rb'

task = Task.new
string = "Can you can a can as a canner can can a can?"
task.search(string, "can") {|result, count| puts result, "count: " << count.to_s }
