class Customer
  @@last_account_no = 0
  attr_accessor :name, :account_no, :balance

  def initialize(name)
    @name = name
    @@last_account_no += 1
    @account_no = @@last_account_no
    @balance = 1000.to_f
  end

  def acceptable_amount?(amount)
    true if Float(amount) rescue false
  end

  def deposit(amount)
    if not acceptable_amount?(amount)
      raise ArgumentError, 'Amount not allowed', caller
      return
    end
    if amount.to_f > 0 
      @balance += amount.to_f 
    else
      raise ArgumentError, 'Amount too low', caller
    end
  end

  def withdraw(amount)
    if not acceptable_amount?(amount)
      raise ArgumentError, 'Amount not allowed', caller
      return
    end
    if (@balance - amount.to_f) > 0
      @balance -= amount.to_f 
    else
      raise ArgumentError, 'Withdraw limit exceeded', caller
    end    
  end

  def to_s
    "name: #{@name}, acct_no: #{@account_no}, balance: #{@balance}"
  end
end
