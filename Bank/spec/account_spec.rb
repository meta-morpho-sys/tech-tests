require 'account'

describe Account do
  before :each do
    @account = Account.new
  end

  describe '#new' do
    it 'returns a new account object' do
      expect(@account).to be_an_instance_of(Account)
    end
  end
end
