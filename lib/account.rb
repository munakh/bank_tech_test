require_relative 'statement'
require_relative 'transaction'
class Account

  attr_reader :balance, :statement, :transactions

  def initialize(balance=0, statement=Statement.new, transaction=Transaction)
    @balance = balance
    @statement = statement
    @transactions = []
    @transaction = transaction
  end

  def deposit(amount)
    @balance = @balance += amount
    new_transaction(amount, "")
    save(amount)
  end

  def withdraw(amount)
    @balance = @balance -= amount
    new_transaction("", amount)
    save(amount)
  end

  def display
    @statement.print(@transactions)
  end

  def new_transaction(credit="", debit="")
    transaction = Transaction.new(credit, debit, @balance)
  end

  def save(transaction)
    @transactions << transaction
  end

end
