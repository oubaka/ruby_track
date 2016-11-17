class Array
  def hash
    result = Hash.new {|h,k| h[k] = [] }    
    for x in self
      len = x.to_s.length
      result[len] << x
    end
    result
  end
  def injection
    hash_val = self.hash
    keys = hash_val.keys
    output = {}
    output['odd'] = keys.select {|x| x.odd?}.inject([]) {|cum, i| cum << hash_val[i] }
    output['even'] = keys.select {|x| x.even?}.inject([]) {|cum, i| cum << hash_val[i] }
    output    
  end
end