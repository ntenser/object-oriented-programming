class BankAccount
  attr_accessor :balance, :interest_rate

  def initialize (balance, interest_rate)
    @balance = balance
    @interest_rate = interest_rate
  end

  def deposits(amount)
    @amount += deposits
  end

  def withdrawls(amount)
    @amount -= withdrawls
  end

  def gain_interest
    @balance += interest_rate
