def factorial(n)
  (n.downto 1).inject(:*)
end

puts factorial 5
