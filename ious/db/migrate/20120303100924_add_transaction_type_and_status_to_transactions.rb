class AddTransactionTypeAndStatusToTransactions < ActiveRecord::Migration
  def change
    add_column  :transactions,  :transaction_type_id, :integer, :default => 0, :null => false
    add_column  :transactions,  :status,              :integer, :default => 0, :null => false

    add_index   :transactions,  :transaction_type_id
    add_index   :transactions,  :status
  end
end
