require_relative '../lib/task.rb'

file = File.dirname(__FILE__) << '/file.csv'
output = File.dirname(__FILE__) << '/output.txt'

task = Task.new(file, output)

begin
  task.run    
rescue => exception
  p exception
end
