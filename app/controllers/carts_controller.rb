class CartsController < ApplicationController
  before_action :set_cart, only: [:destroy]

  # Get all the carts of current user when user is a a buyer.
  # Get current users product list as My product in navigation bar
  # Get current users latest profile as My profile in navigation bar
  def index
    @carts = Cart.where(buyer_id: current_user.id)
    @products = Product.where(seller_id: current_user.id)
    @profile = Profile.where(user: current_user).last
  end



  # Add a product to the cart of current user when current user is a buyer
  def create
    @cart = Cart.new(cart_params.merge({buyer_id: current_user.id}))
    if @cart.save
      redirect_to carts_path, notice: 'Product is added to the cart!'
    else
      render :new
    end
  end



  # Delete one product from the cart
  def destroy
    @cart.destroy
    redirect_to carts_url, notice: 'Product is removed successfully!'
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_cart
      @cart = Cart.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cart_params
      params.require(:cart).permit(:product_id)
    end
end
