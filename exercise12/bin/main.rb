def count(string)
  result = {
    "upcase" => ("A".."Z").inject(0) {|cum, i| cum + string.count(i.to_s)},
    "downcase" => ("a".."z").inject(0) {|cum, i| cum + string.count(i.to_s)},
    "digits" => (0..9).inject(0) {|cum, i| cum + string.count(i.to_s)},
    "special" => (" ".."@").inject(0) {|cum, i| cum + string.count(i.to_s)}
  }  
  result
end

p count("@ HEllo World 9 !!!")
