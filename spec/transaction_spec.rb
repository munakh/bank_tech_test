require 'transaction'

describe Transaction do
  subject(:transaction) { described_class.new(100, nil, 100) }

  it 'records a transaction' do
    expect(transaction.credit).to eq 100
    expect(transaction.debit).to eq nil
    expect(transaction.balance).to eq 100
    expect(transaction.date).to eq Time.now.strftime("%d-%m-%Y")
  end
end
