require_relative 'account'
require_relative 'transaction'
class Statement

  attr_accessor :transactions

  Header = "date || credit || debit || balance\n"

  def initialize(transactions=[])
    @transactions = transactions
  end

  def add(transaction)
    @transactions << transaction
  end

  def print
    Header
    transactions.each do |transaction|
    "#{transaction.date} + || #{transaction.credit.to_s} || #{transaction.debit.to_s} || #{transaction.balance.to_s}"
    end
  end

end
