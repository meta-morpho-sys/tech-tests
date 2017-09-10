require 'app_money'

describe 'Money' do

  it 'should support == operator' do
    subject = Money.new(0, 'USD')
    expect(subject).to eql(Money.new(0, 'USD'))
  end

  it 'defaults to GBP' do
    subject = Money.new(0)
    expect(subject.currency.iso_code).to eql 'GBP'
  end
end
