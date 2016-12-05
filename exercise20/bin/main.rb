require_relative '../lib/fixnum.rb'

begin
  puts (-3).factorial
rescue => exception
  puts exception
end

puts (-3).factorial
