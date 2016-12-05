require_relative '../lib/fixnum.rb'

50.prime_numbers {|x| print(x.to_s + ",") }  
