require_relative '../lib/customer.rb'

# Customer
cust_1 = Customer.new('Obiajulu Ubaka')
puts cust_1
cust_1.deposit('5000s')
puts cust_1
cust_1.withdraw(2500)
puts cust_1

cust_2 = Customer.new('John Adams')
puts cust_2
