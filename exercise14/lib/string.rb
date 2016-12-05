class String
  
  def reverse    
    result = []
    temp = []
    chars.reverse.each do |c|
      if c =~ /\s/
        result << temp.reverse.join
        result << c         
        temp.clear        
      else
        temp << c
      end
    end
    result << temp.reverse.join
    result.join
  end

end