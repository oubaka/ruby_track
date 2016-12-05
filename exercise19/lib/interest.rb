class Interest
  RATE = 0.1
  attr_accessor :principal, :time, :compound_time

  def initialize
    yield self if block_given?
  end

  def simple_interest
    @principal * (1 + (RATE) * @time)
  end

  def compound_interest
    @principal * (1 + RATE.fdiv(@compound_time)) ** (@compound_time * @time)
  end

  def get_difference
    compound_interest - simple_interest    
  end
  
  private :compound_interest, :simple_interest

end