class RemoveCardFromTransactions < ActiveRecord::Migration
  def change
    remove_column :transactions, :card, :string
  end
end
