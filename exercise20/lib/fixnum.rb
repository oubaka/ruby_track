require_relative './negative_argument_error.rb'

class Fixnum
  
  def factorial
    raise NegativeArgumentError, 'negatives are not allowed', caller if self < 0
    return 1 if self == 0
    downto(1).reduce(:*)
  end

end