require 'money'
require 'account'

describe Account do
  before :each do
    @account = Account.new
  end

  describe '#new' do
    it 'returns a new account object' do
      expect(@account).to be_an_instance_of(Account)
    end

    it 'has a default balance of zero' do
      expect(@account.balance).to eql(Money.new(0))
    end

    it 'has an initial balance' do
      account = Account.new(Money.new(100))
      expect(account.balance).to eql(Money.new(100))
    end
  end

  describe 'capital management:' do
    it 'lets you deposit an amount' do
      expect { @account.deposit(Money.new(2)) }.to change { @account.balance }.by(Money.new(2))
    end

    it 'lets you add a new deposit' do
      @account.deposit(Money.new(2))
      @account.deposit(Money.new(10))
      expect(@account.balance).to eql(Money.new(12))
    end

    it 'lets you withdraw an amount' do
      expect { @account.withdraw(Money.new(2)) }.to change { @account.balance }.by(Money.new(-2))
    end
  end

end
