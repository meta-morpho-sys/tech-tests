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
  end

  def withdraw amount
    @balance -= amount
  end

  private
  def create_transaction
    @transaction ||= Transaction.new(amount, balance_after_transaction)
  end
end
