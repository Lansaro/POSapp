class AddCardToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :card, :string
  end
end
