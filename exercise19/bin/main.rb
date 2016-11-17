require_relative '../lib/interest.rb'

interest = Interest.new(5000, 1) {|diff| puts "Difference is: #{diff}"}
interest.get_difference(12)
