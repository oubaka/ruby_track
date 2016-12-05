class Array  
  
  def hash
    result = Hash.new {|h,k| h[k] = [] }    
    for x in self
      len = x.to_s.length
      result[len] << x
    end
    result
  end

end