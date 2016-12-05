require 'prime'

class Task
  
  def find_prime(n)
    result = []
    (1..n).step {|x| result << x if Prime.prime? x}
    result
  end

end