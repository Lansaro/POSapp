class RemoveMyPasswordFromTransactions < ActiveRecord::Migration
  def change
    remove_column :transactions, :my_password, :string
  end
end
