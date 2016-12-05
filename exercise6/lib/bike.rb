require_relative './vehicle.rb'

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