class OrdersController < ApplicationController


  # GET the paid order list of current user as a buyer.
  # Get current users product list as My product in navigation bar
  # Get current users latest profile as My profile in navigation bar
  def index
    @orders = Order.all
    @products = Product.where(seller_id: current_user.id)
    @profile = Profile.where(user: current_user).last
  end



end
