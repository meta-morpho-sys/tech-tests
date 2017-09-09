class Transaction
  attr_accessor :amount, :balance_after_transaction

  def initialize(amount, balance_after_transaction)
    @amount = amount
    @balance_after_transaction = balance_after_transaction
  end
end
