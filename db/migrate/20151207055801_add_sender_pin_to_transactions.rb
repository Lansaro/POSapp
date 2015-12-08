class AddSenderPinToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :sender_pin, :string
  end
end
