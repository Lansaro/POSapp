require 'rest_client'

class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.all
  end

  #capturing wallet, transaction details
  #create a transaction instance (create)
  #then to to back_end

  def new
    @wallet = get_wallet
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.wallet = get_wallet
    if @transaction.save
      # @transaction.send_transaction_to_back_end
      redirect_to wallet_path(get_wallet)
    else
      render "new"
    end
  end

  private

  def get_transaction
    Transaction.find(params[:id])
  end

  def get_wallet
    Wallet.find(params[:wallet_id])
  end

  def transaction_params
    params.require(:transaction).permit(:amount, :status, :description, :sender_wallet, :sender_private_key, :sender_pin)
  end
end
