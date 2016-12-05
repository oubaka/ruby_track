class Task

  def split_time(t)
    regex = /^(\d{1,2}):(\d{1,2}):(\d{1,2})$/
    match = t.match(regex)
    match ? match.captures : []
  end

  def sum_time(t1, t2)
    c1 = split_time(t1)
    c2 = split_time(t2)
    return "unknown time format" if c1.size != 3 || c2.size != 3
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