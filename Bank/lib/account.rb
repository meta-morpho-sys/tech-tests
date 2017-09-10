require 'app_money'
require 'statement'

class Account

  attr_reader :balance, :statement

  def initialize initial_balance = Money.new(0)
    @balance = initial_balance
    @statement = Statement.new
  end

  def deposit amount
    @balance += amount
    transaction = Transaction.new(amount, @balance)
    @statement.add_transaction(transaction)
  end

  def withdraw amount
    @balance -= amount
    transaction = Transaction.new(-amount, @balance)
    @statement.add_transaction(transaction)
  end

end
