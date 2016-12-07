class NegativeArgumentError < StandardError
  def initialize(msg="Unacceptable negative argument")
    super
  end
end