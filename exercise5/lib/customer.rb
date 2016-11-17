class Customer
  @@last_account_no = 0
  attr_accessor :name, :account_no, :balance

  def initialize(name)
    @name = name
    @@last_account_no += 1
    @account_no = @@last_account_no
    @balance = 1000.to_f
  end

  def deposit(amount)
    begin
      @balance += amount.to_f
    rescue => exception
      puts exception
    end
  end

  def withdraw(amount)
    begin
      @balance -= amount.to_f
    rescue => exception
      puts exception
    end
  end

  def to_s
    "name: #{@name}, acct_no: #{@account_no}, balance: #{@balance}"
  end
end
