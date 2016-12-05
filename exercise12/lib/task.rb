class String  

  def count
    regex = {
      :upcase => 'A'..'Z',
      :downcase => 'a'..'z',
      :digits => '0'..'9'
    }
    result = Hash.new(0)
    each_char do |c|
      found = false
      if regex[:upcase].include? c
        result[:upcase] += 1 
        found = true
      end
      if regex[:downcase].include? c
        result[:downcase] += 1 
        found = true
      end
      if regex[:digits].include? c
        result[:digits] += 1
        found = true 
      end
      result[:special] += 1 if not found
    end
    result
  end

end