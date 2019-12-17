require_relative 'statement'
require_relative 'transaction'
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

  def new_transaction
    transaction = Transaction.new(credit, debit, @balance)
    @statement.line_items << transaction
  end

end
