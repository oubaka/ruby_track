require_relative './fixnum.rb'

class Task

  def pascal(row)
    (row + 1).to_i.times do |n|
      (n + 1).times do |r|
        yield(n.factorial / ( r.factorial * ( n - r ).factorial ), n)
      end
    end
  end

end
