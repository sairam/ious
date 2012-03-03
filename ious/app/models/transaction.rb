class Transaction < ActiveRecord::Base
  # belongs_to :account

end
# == Schema Information
# Schema version: 20120303065011
#
# Table name: transactions
#
#  id         :integer         not null, primary key
#  account_id :integer         not null
#  title      :string(255)     not null
#  amount     :float           not null
#  net_effect :boolean         not null
#  date       :datetime        not null
#  created_at :datetime        not null
#  updated_at :datetime        not null
#
# Indexes
#
#  index_transactions_on_date        (date)
#  index_transactions_on_amount      (amount)
#  index_transactions_on_title       (title)
#  index_transactions_on_account_id  (account_id)
#

