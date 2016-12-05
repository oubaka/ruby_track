class Fixnum
  
  def factorial
    raise ArgumentError, 'negatives are not allowed', caller if self < 0
    return 1 if self == 0
    downto(1).reduce(:*)
  end

end