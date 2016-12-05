class Task

  def factorial(n)
    raise ArgumentError, "Negative arg supplied", caller if n < 0
    (n.downto 1).inject(:*)
  end  

end