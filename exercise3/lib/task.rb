class Task

  def fib(max)
    n1, n2 = 0, 1  
    while n1 <= max
      yield n1
      n1, n2 = n2, n1 + n2  
    end 
  end
  
end