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
    [carry, result.reverse.map {|x| x.to_s.rjust(2, "0") }.join(":")]
  end

  def sum_time_multi(*args)
    days = 0
    last = args[0]
    return last if args.length < 2
    args[1..args.length].each do |time|
      sum = sum_time(last, time)
      last = sum[1]
      days += sum[0]
    end
    days > 0 ? days.to_s << " day & " << last : last
  end

end