require 'account'

describe Account do
  subject(:account) { described_class.new(0, statement, transaction_class) }
  let(:transaction_class) { double(:transaction_class, new: transaction) }
  let(:transaction) { double(:transaction,
                      date: '18-12-2019', debit: '0',
                      credit: '100', balance: '100')
                    }
  let(:statement) { Statement.new }

  it 'adds the deposit amount to the balance' do
    expect{ account.deposit(100) }.to change{ account.balance }.by 100
  end

  it 'minuses the withdrawal amount from the balance' do
    account.deposit(100)
    expect{ account.withdraw(50) }.to change{ account.balance }.by -50
  end

  it 'raises an error if withdrawal amount more than balance' do
    account.deposit(10)
    expect{ account.withdraw(50) }.to raise_error 'You do not have enough money in your account'
  end

  it 'registers a transaction' do
    account.deposit(100)
    expect(account.transactions).to include transaction
  end

  it 'prints a summary of transactions' do
    account.deposit(100)
    expect(account.summary).to eq "date || credit || debit || balance\n"\
    "18-12-2019 || 100 || 0 || 100"
  end
end
