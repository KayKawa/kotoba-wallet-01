class WalletsController < ApplicationController
  def index
    @wallets = Wallet.all
    @users = User.all
  end

  def show
    @wallet = Wallet.find(params[:id])
  end
end
