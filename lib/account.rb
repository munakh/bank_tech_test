require_relative 'statement'
class Account

  attr_reader :balance, :statement

  def initialize(balance=0, statement=Statement.new)
    @balance = balance
    @statement = statement
  end

  def deposit(amount)
    @balance = @balance += amount

  end

  def withdraw(amount)
    @balance = @balance -= amount
  end

end
