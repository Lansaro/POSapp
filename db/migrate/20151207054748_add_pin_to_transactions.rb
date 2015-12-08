class AddPinToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :pin, :string
  end
end
