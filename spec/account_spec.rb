require 'account'

describe Account do
  subject(:account) { described_class.new }

  it 'should have an empty balance' do
    expect(account.balance).to eq 0
  end

end
