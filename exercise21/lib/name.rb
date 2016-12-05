class Name
  attr :firstname, :lastname

  def initialize(firstname, lastname)
    self.firstname = firstname
    self.lastname  = lastname
  end 

  def firstname=(val)    
    raise ArgumentError, "Firstname can not be empty", caller if val.empty?
    raise ArgumentError, "Firstname must start with a capital letter", caller if not val =~ /^[A-Z]\w+$/
    @firstname = val
  end

  def lastname=(val)   
    raise ArgumentError, "Firstname can not be empty", caller if val.empty?    
    @lastname = val
  end

  def to_s    
    "firstname: #{@firstname}, lastname: #{@lastname}"
  end

end