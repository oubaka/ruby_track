class String  

  def count
    regex = {
      :upcase => 'A'..'Z',
      :downcase => 'a'..'z',
      :digits => '0'..'9'
    }
    result = Hash.new(0)
    each_char do |c|
      case c
      when regex[:upcase] 
        result[:upcase] += 1
      when regex[:downcase]
        result[:downcase] += 1 
      when regex[:digits]
        result[:digits] += 1
      else
        result[:special] += 1
      end
    end
    result
  end

end