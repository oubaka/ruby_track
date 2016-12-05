require_relative '../lib/string.rb'

string = "Can you can a can as a canner can can a can?"
string.search("can") {|result, count| puts result, "count: #{count.to_s}" }
