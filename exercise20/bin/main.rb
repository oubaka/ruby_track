def factorial(n)
  raise ArgumentError, "Negative arg supplied", caller if n < 0
  (n.downto 1).inject(:*)
end

begin
  puts factorial(-3)
rescue => exception
  puts exception
end

puts factorial(-3)
