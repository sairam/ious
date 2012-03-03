class CreateTransactionTable < ActiveRecord::Migration
  def change
    create_table  :transactions do |t|
      t.integer   :account_id,          :null => false
      t.string    :title,               :null => false
      t.float     :amount, :scale => 2, :null => false
      t.boolean   :net_effect,          :null => false
      t.datetime  :date,                :null => false
      t.timestamps
    end
    add_index     :transactions, :account_id
    add_index     :transactions, :title
    add_index     :transactions, :amount
    add_index     :transactions, :date

  end

end
