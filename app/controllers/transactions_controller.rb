require 'rest_client'

class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.all
  end

  #capturing wallet, transaction details
  #create a transaction instance (create)
  #then to to back_end

  def create
    @wallet = Wallet.find(params[:wallet_id])
    @transaction = @wallet.transaction.create(transaction_params)
    if @transaction.save
      # @transaction.send_transaction_to_back_end
      redirect_to wallet_path(@wallet)
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
    params.require(:transaction).permit(:amount, :status, :description, :sender_wallet, :wallet, :sender_private_key, :sender_pin)
  end
end
