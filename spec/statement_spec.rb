require 'statement'

describe Statement do
  subject(:statement) { described_class.new }

  it 'has no line items to begin with' do
    expect(statement.line_items).to eq []
  end

  it 'displays headers for statement' do
    expect(statement.header).to eq "date || credit || debit || balance"
  end

end
