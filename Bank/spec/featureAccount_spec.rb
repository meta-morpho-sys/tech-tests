require 'account'
require 'statement'
require 'transaction'

describe 'Bank account statement' do

  before :each do
    @account = Account.new
  end

  xit 'prints a statement with all transactions' do
    statement = <<TRANSACTIONS
| date | credit | debit | balance |
|10/01/2012 | 1000.00 | | 1000.00 |
TRANSACTIONS

    @account.deposit(1000)
    expect { @account.statement.print }.to output(statement).to_stdout
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
