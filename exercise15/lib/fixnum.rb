require 'prime'

class Fixnum
  
  def prime_numbers
    (1..self).step {|x| yield x if Prime.prime? x} if block_given?
  end

end