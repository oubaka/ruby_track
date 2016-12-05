class String

  def search(search)
    count = 0
    result = gsub(/#{search}/i) do |match| 
      count += 1 
      "(#{match})"
    end   
    yield(result, count) 
  end

end