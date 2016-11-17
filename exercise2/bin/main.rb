# Replace
puts "Enter any text of your choice: "
text = gets.chomp
result = text.gsub(/[aeiou]/, '*')
puts result
