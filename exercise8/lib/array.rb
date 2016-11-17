class Array
  def power(val)
    self.each_with_index do |x, i|
      self[i] = x**val
    end
  end
end