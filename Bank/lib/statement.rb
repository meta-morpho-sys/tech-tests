class Statement
  HEADER = "| date | credit | debit | balance |"

  def initialize
    @transactions = []
  end

  def print
    puts HEADER
    @transactions.each { |transaction|
      # |10/01/2012 | 1000.00 | | 1000.00 |
      puts "|10/01/2012 | #{transaction.amount} | | #{transaction.balance_after_transaction} |"
    }
  end

  def add_transaction(transaction)
    @transactions << transaction
  end
end
