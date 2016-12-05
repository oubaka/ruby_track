class String
  
  def hash_count    
    count_hash = Hash.new(0)

    each_char do |letter|      
      count_hash[letter] += 1 if letter =~ /[A-Za-z]/
    end

    count_hash
  end

end