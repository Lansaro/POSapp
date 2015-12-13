# == Schema Information
#
# Table name: transactions
#
#  id                 :integer          not null, primary key
#  amount             :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  status             :string
#  description        :string
#  sender_wallet      :string
#  sender_private_key :string
#  sender_card        :string
#  sender_pin         :string
#  wallet_id          :integer
#

require 'rubygems' if RUBY_VERSION < '1.9'
require 'rest_client'
require 'json'
require 'uri'

class Transaction < ActiveRecord::Base
  belongs_to :wallet
  belongs_to :user

  # after_create :send_transaction_to_back_end

  # def send_transaction_to_block_chain
  #   address=self.foreign_wallet
  #   amount=self.amount
  #   from=self.card.wallet.account
  #   private_key=self.card.wallet.private_key
  #   fee=10000
  #   note=self.description
  #   my_password=self.password
  #
  #   wallet = Blockchain::Wallet.new(private_key, my_password)
  #
  #   payment = wallet.send(address, amount, from_address: from)
  #
  #   puts payment.tx_hash
  # end
end
