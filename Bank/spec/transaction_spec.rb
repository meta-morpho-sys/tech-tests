require 'transaction'

describe 'Transaction' do
before :each do
  @account = Account.new
end

  it 'is has date'

  it 'is has amount' do
    transaction = Transaction.new(1000, 2000)
    expect(transaction.amount).to eql(1000)
  end


  it 'is has balance_after_transaction'
end
