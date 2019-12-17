require_relative 'statement'
require_relative 'transaction'
class Account

  attr_reader :balance, :transactions

  def initialize(balance=0, statement=Statement.new, transaction=Transaction)
    @balance = balance
    @statement = statement
    @transactions = []
    @transaction = transaction
  end

  def deposit(amount)
    add(amount)
    credit = new_credit(amount)
    save(credit)
  end

  def withdraw(amount)
    minus(amount)
    debit = new_debit(amount)
    save(debit)
  end

  def summary
    @statement.print(@transactions)
  end

  def add(amount)
    @balance += amount
  end

  def minus(amount)
    @balance -= amount
  end

  def new_credit(amount)
    @transaction.new("0", amount, @balance)
  end

  def new_debit(amount)
    @transaction.new(amount, "0", @balance)
  end

  def save(transaction)
    @transactions << transaction
  end

end
