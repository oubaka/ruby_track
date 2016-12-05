require_relative '../lib/task.rb'

task = Task.new
puts task.sum_time("0:45:34","0:15:58")
puts task.sum_time("11:23:07","22:53:45")
puts task.sum_time("11:23:07","22:88:45")
puts task.sum_time("22:23:07","23:20:45")
puts task.sum_time("11:23:07","24:22:45")
