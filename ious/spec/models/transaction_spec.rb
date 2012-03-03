require 'spec_helper'

describe Transaction do
  before(:each) do
    @attr = {
      :account_id  => 1,
      :title       => "A fair transaction",
      :amount      => 123.45,
      :date        => Time.now.to_date,
      :transaction_type_id => 1,
      :status      => 1
      }
  end

  it 'should create a new instance given valid attributes' do
    Transaction.create!(@attr)
  end

  it 'should create a new instance given an expense' do
    transaction = Transaction.new(@attr.merge(:amount => -123.45))
    transaction.save!
  end

  it 'should require a title' do
    transaction = Transaction.new(@attr.merge(:title => ''))
    transaction.should_not be_valid
  end

  it 'should not have a with 1000 chars long' do
    transaction = Transaction.new(@attr.merge(:title => 'a'*1000))
    transaction.should_not be_valid
  end

  it 'should require an amount' do
    transaction = Transaction.new(@attr.merge(:amount => nil))
    transaction.should_not be_valid
  end

  it 'should require an account' do
    transaction = Transaction.new(@attr.merge(:account_id => nil))
    transaction.should_not be_valid
  end

  it 'should require a date' do
    transaction = Transaction.new(@attr.merge(:date => nil))
    transaction.should_not be_valid
  end

  it 'should have a transaction type' do
    transaction = Transaction.new(@attr.merge(:transaction_type_id => nil))
    transaction.should_not be_valid
  end

end
# == Schema Information
# Schema version: 20120303100924
#
# Table name: transactions
#
#  id                  :integer         not null, primary key
#  account_id          :integer         not null, indexed
#  title               :string(255)     not null, indexed
#  amount              :float           not null, indexed
#  date                :datetime        not null, indexed
#  created_at          :datetime        not null
#  updated_at          :datetime        not null
#  transaction_type_id :integer         default(0), not null, indexed
#  status              :integer         default(0), not null, indexed
#
# Indexes
#
#  index_transactions_on_status               (status)
#  index_transactions_on_transaction_type_id  (transaction_type_id)
#  index_transactions_on_date                 (date)
#  index_transactions_on_amount               (amount)
#  index_transactions_on_title                (title)
#  index_transactions_on_account_id           (account_id)
#

