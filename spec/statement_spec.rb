require 'statement'

describe Statement do
  subject(:statement) { described_class.new }
  let(:transaction) { Transaction.new(100, nil, 100) }

  it 'has no line items to begin with' do
    expect(statement.line_items).to eq []
  end

  it 'displays headers for statement' do
    expect(statement.header).to eq "date || credit || debit || balance"
  end

  it 'should include new transactions' do
    statement.line_items << transaction
    expect(statement.line_items).to eq [transaction]
  end

end
