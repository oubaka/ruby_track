require_relative '../lib/task.rb'

task = Task.new
puts task.sum_time_multi("11:23:07","22:53:45","0:23:23","23:45:56")
puts task.sum_time_multi("11:23:07")
