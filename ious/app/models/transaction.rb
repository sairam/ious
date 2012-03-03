class Transaction < ActiveRecord::Base

  # belongs_to :account
  # validates_associated :account
  validates :account_id, :transaction_type_id, :numericality => {:greater_than_or_equal_to => 1, :only_integer => true }
  validates :status, :numericality => {:greater_than_or_equal_to => 1, :only_integer => true }

  validates_presence_of :title, :amount, :date, :transaction_type_id, :status

  validates :title, :length => { :maximum => 256 }
  # validates :amount with float precision of 2

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

