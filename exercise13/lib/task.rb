class Task
  
  def factorial(n)
    (n.downto 1).inject(:*)
  end

end