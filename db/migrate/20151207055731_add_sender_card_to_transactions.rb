class AddSenderCardToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :sender_card, :string
  end
end
