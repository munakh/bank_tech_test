require 'account'

describe Account do
  subject(:account) { described_class.new(0, statement, transaction_class) }
  let(:transaction_class) { double(:transaction_class, new: transaction) }
  let(:transaction) { double(:transaction) }
  let(:statement) { Statement.new }

  it 'should have an empty balance' do
    expect(account.balance).to eq 0
  end

  it 'adds the deposit amount to the balance' do
    account.deposit(100)
    expect(account.balance).to eq 100
  end

  it 'minuses the withdrawal amount from the balance' do
    account.deposit(100)
    account.withdraw(50)
    expect(account.balance).to eq 50
  end

  it 'registers a transaction' do
    account.deposit(100)
    expect(account.transactions).to include transaction
  end


end
