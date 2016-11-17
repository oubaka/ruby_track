def pascal(row)
  last_row = [1]
  (row + 1).to_i.times do |i|
    current_row = []
    last_row.unshift(0).push(0)
    (i + 1).times do |j|      
      val = last_row[j] + last_row[j + 1]
      yield(val)
      current_row << val
    end
    last_row = current_row
  end
end

pascal(6) {|item| puts "#{item},"}
