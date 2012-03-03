class RemoveNetEffectFromTransaction < ActiveRecord::Migration
  def up
    remove_column :transactions, :net_effect
  end

  def down
    add_column :transactions, :net_effect, :boolean, :default => false
  end
end
