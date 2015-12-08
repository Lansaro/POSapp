class RemovePinFromTransactions < ActiveRecord::Migration
  def change
    remove_column :transactions, :pin, :string
  end
end
