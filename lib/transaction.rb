class Transaction

  attr_reader :credit, :debit, :balance, :date

  def initialize(date=Time.new.strftime("%d-%m-%Y"), credit, debit, balance)
    @credit = credit
    @debit = debit
    @balance = balance
    @date = date
  end

end
