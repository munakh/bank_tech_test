require_relative 'account'
require_relative 'transaction'
class Statement

  attr_accessor :transactions

  def print(transactions)
    @transactions = transactions
    (print_header + print_transactions)
  end

  def print_header
    "date || credit || debit || balance\n"
  end

  def print_transactions
    display = @transactions.reverse.map do |transaction|
    "#{transaction.date} || #{transaction.credit} || #{transaction.debit} || #{transaction.balance}"
    end
    display.join("\n")
  end
end
