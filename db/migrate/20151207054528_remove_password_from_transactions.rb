class RemovePasswordFromTransactions < ActiveRecord::Migration
  def change
    remove_column :transactions, :password, :string
  end
end
