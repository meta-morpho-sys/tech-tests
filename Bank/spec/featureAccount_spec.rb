require 'account'
require 'app_money'


describe 'Bank account statement' do

  before :each do
    @account = Account.new
  end

  it 'prints a statement with one deposit transaction' do
    st_output = <<TRANSACTIONS
| date | credit | debit | balance |
|10/01/2012 | 1000.00 | | 1000.00 |
TRANSACTIONS

    @account.deposit(Money.new(100000))
    expect { @account.statement.print }.to output(st_output).to_stdout
  end

  xit 'prints a statement with one withdrawal transaction' do
    st_output = <<TRANSACTIONS
| date | credit | debit | balance |
|14/01/2012 | | 500.00 | 500.00 |
TRANSACTIONS

    @account = Account.new(Money.new(100000))
    @account.withdraw(Money.new(50000))
    expect { @account.statement.print }.to output(st_output).to_stdout
  end

  # it 'prints a statement with all transactions' do
    # @account.deposit(1000)
    # @account.deposit(2000)
    # @account.withdraw(500)
    #
    # @account.print_statement
    #
    # expect(final_print('text')).to output("| date | credit | debit | balance |").to_stdout
    # expect(final_print('text')).to output("|14/01/2012 | | 500.00 | 2500.00 |").to_stdout
    # expect(final_print('text')).to output("|13/01/2012 | 2000.00 | | 3000.00 |").to_stdout
    # expect(final_print('text')).to output("|10/01/2012 | 1000.00 | | 1000.00 |").to_stdout
  # end
end
