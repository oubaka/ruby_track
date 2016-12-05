class Task

  def search(string, search)
    count = 0
    result = string.gsub(/#{search}/i) do |match| 
      count += 1 
      '(' << match << ')'
    end   
    yield(result, count) 
  end

end