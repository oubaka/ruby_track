def search(string, search)
  count = 0
  result = string.gsub(/#{search}/i) do |match| 
    count += 1 
    '(' << match << ')'
  end   
  yield(result, count) 
end

string = "Can you can a can as a canner can can a can?"
search(string, "can") {|result, count| puts result, "count: " << count.to_s }
