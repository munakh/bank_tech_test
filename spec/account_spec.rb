require 'account'

describe Account do
  subject(:account) { described_class.new }
  let(:transaction) { Transaction.new(100, nil, 100) }
  let(:statement) { Statement.new }

  it 'should have an empty balance' do
    expect(account.balance).to eq 0
  end

  it 'creates a new statement with a new account' do
    myaccount = Account.new
    expect(myaccount.statement).to be_truthy
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

end
