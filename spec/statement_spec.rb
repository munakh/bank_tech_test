require 'statement'

describe Statement do
  subject(:statement) { described_class.new }
  let(:transactions) { [transaction1, transaction2] }
  let(:transaction1) {
                        double(:transaction1,
                        date: '17-12-2019', debit: '0',
                        credit: '100', balance: '100')
                      }
  let(:transaction2) {
                        double(:transaction2,
                        date: '18-12-2019', debit: '5',
                        credit: '0', balance: '5')
                      }

  it 'displays all transactions' do
    expect(statement.print(transactions)).to eq "date || credit || debit || balance\n"\
    "18-12-2019 || 0 || 5 || 5\n"\
    "17-12-2019 || 100 || 0 || 100"\
  end
end
