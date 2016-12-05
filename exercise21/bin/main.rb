require_relative '../lib/name.rb'

name = Name.new("Obi", "Ubaka")
puts name

name.firstname = "John"
puts name

name = Name.new("", "john")
puts name
