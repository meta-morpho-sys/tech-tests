require 'statement'
require 'app_money'

describe 'statement' do

  before :each do
    @statement = Statement.new
    @st_output = <<TRANSACTIONS
| date | credit | debit | balance |
|10/01/2012 | 1000.00 | | 1000.00 |
TRANSACTIONS
  end

  it 'prints an initial page with no transactions' do
    expect { @statement.print }.to output(Statement::HEADER + "\n").to_stdout
  end

  it 'prints transactions' do
    amount = Money.new(100000)
    balance_after_transaction = Money.new(100000)
    transaction = Transaction.new(amount, balance_after_transaction)

    @statement.add_transaction(transaction)
    expect { @statement.print }.to output(@st_output).to_stdout

  end
end
