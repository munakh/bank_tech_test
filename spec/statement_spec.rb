require 'statement'

describe Statement do
  subject(:statement) { described_class.new }
  let(:transaction) { Transaction.new(100, nil, 100) }
  let(:transactions) { double :transactions }

  it 'should have no transactions to begin with' do
    expect(statement.print).to eq []
  end

  it 'displays all transactions' do
    statement.add(transaction)
    # date = Time.now.strftime("%d-%m-%Y")
    p statement.print
    expect(statement.print).to eq [transaction]
    expect(transaction.debit).to eq nil
  end
  
end
