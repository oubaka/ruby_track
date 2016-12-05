class Task

  def split_time(t)
    regex = /^(\d{1,2}):(\d{1,2}):(\d{1,2})$/
    match = t.match(regex)
    match ? match.captures : []
  end

  def is_valid?(parts)
    return false if parts.size != 3    
    parts[0].to_i <= 23 && parts[1].to_i <= 59 && parts[2].to_i <= 59 
  end

  def sum_time(t1, t2)
    c1 = split_time(t1)
    c2 = split_time(t2)
    return "invalid time format" if !is_valid?(c1) || !is_valid?(c2)    
    max = [24, 60, 60]
    result = []
    carry = 0
    2.downto 0 do |i|
      sum = c1[i].to_i + c2[i].to_i + carry
      result << sum % max[i]
      carry = (sum / max[i]).floor
    end
    time = result.reverse.map {|x| x.to_s.rjust(2, "0") }.join(":")
    carry > 0 ? carry.to_s << " day & " << time : time
  end

end