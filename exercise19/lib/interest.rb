class Interest
  RATE = 10
  attr_accessor :pricipal, :time

  def initialize(principal, time, &block)
    @principal = principal
    @time = time
    @block = block
  end

  def simple_interest
    @principal * (1 + (RATE.fdiv(100)) * @time)
  end

  def compound_interest(no_of_times)
    @principal * (1 + RATE.fdiv(100 * no_of_times)) ** (no_of_times * @time)
  end

  def get_difference(compound_time)
    diff = self.compound_interest(compound_time) - self.simple_interest
    @block.call(diff.round(2))
  end

end