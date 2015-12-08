class RemovePrivateKeyFromTransactions < ActiveRecord::Migration
  def change
    remove_column :transactions, :private_key, :string
  end
end
