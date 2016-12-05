class Array
  def get_hash
    result = Hash.new {|h,k| h[k] = [] }    
    for x in self
      len = x.to_s.length
      result[len] << x
    end
    result
  end
  def injection    
    get_hash.inject({ :odd => [], :even => []}) do |buffer, (k, v)|      
      buffer[:odd] << v if k.odd?
      buffer[:even] << v if k.even?
      buffer
    end   
  end
end