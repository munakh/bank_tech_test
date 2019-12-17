class Account

  attr_reader :balance

  def initialize(balance=0)
    @balance = balance
  end

  def deposit(amount)
    @balance = @balance += amount
  end

  def withdraw(amount)
    @balance = @balance -= amount
  end

  def print
    "date || credit || debit || balance"
  end
end
