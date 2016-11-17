class Vehicle
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def to_s
    "name: #@name, price: #@price"
  end

end

class Bike < Vehicle
  attr_accessor :dealer

  def initialize(name, price, dealer)
    super(name, price)
    @dealer = dealer
  end

  def to_s
    "name: #@name, price: #@price, dealer: #@dealer"
  end
end
