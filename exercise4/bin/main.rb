# Palindrome
while true
  puts 'Enter a palindrome or q/Q to quit: '
  text = gets.chomp
  break if text =~ /q/i
  puts "#{text} is a palindrome" if text.reverse == text
  puts "#{text} is not a palindrome" if text.reverse != text
end
