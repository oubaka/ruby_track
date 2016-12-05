require_relative '../lib/interest.rb'

interest = Interest.new do |instance|
  instance.principal = 500
  instance.time = 1
  instance.compound_time = 12
end

puts interest.get_difference.round(2)
