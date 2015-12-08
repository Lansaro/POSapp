class AddSenderPrivateKeyToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :sender_private_key, :string
  end
end
