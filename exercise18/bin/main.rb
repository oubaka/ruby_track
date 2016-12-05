require_relative '../lib/task.rb'

task = Task.new
puts task.sum_time_multi("11:23:07","22:53:45","0:23:23","23:45:56")
puts task.sum_time_multi("11:23:07")
puts task.sum_time_multi("0:45:34","0:15:58")
puts task.sum_time_multi("11:23:07","22:53:45")
puts task.sum_time_multi("11:23:07","22:88:45")
puts task.sum_time_multi("22:23:07","23:20:45")
puts task.sum_time_multi("11:23:07","24:22:45")