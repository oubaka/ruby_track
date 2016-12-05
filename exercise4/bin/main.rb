require_relative '../lib/string.rb'

while true
  puts 'Enter a palindrome or q/Q to quit: '
  text = gets.chomp
  break if text =~ /q/i
  puts "#{text} is a palindrome" if text.palindrome?
  puts "#{text} is not a palindrome" if not text.palindrome?
end
