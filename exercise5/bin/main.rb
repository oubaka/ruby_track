require_relative '../lib/customer.rb'

# Customer
cust_1 = Customer.new('Obiajulu Ubaka')
puts cust_1
begin
  cust_1.deposit('5000s')
rescue => exception
  puts exception
end
puts cust_1
begin
  cust_1.withdraw(2500)
rescue => exception
  puts exception
end
puts cust_1

cust_2 = Customer.new('John Adams')
puts cust_2
cust_2.deposit(3000)
puts cust_2
cust_2.withdraw(2500)
puts cust_2
