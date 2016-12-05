class Task
  
  def run
    mystring = 'reverberation'
    count_hash = {}

    mystring.each_char do |letter|
      count_hash[letter] = 0 if not count_hash[letter]
      count_hash[letter] += 1
    end

    p count_hash
  end

end