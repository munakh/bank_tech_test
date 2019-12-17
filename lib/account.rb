require_relative 'statement'
require_relative 'transaction'
class Account

  attr_reader :balance, :statement, :transactions

  def initialize(balance=0, statement=Statement.new)
    @balance = balance
    @statement = statement
  end

  def deposit(amount)
    @balance = @balance += amount
    new_transaction(amount, "")
  end

  def withdraw(amount)
    @balance = @balance -= amount
    new_transaction("", amount)
  end

  # def display(statement)
  #   statement.show(@statement.transactions)
  # end

  def new_transaction(credit="", debit="")
    transaction = Transaction.new(credit, debit, @balance)
    @statement.transactions << transaction
  end

end
