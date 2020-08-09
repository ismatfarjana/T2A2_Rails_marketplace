class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # Get current users products
  # Get current users latest profile
  def index
    @products = Product.where(seller_id: current_user.id)
    @profile = Profile.where(user: current_user).last
  end

  # Get current users latest profile as "My profile" link in navigation bar
  # Initialise a Cart
  # show each product
  def show
    @profile = Profile.where(user: current_user).last
    @cart = Cart.new
  end

  # Initialise a product
  # Get current users latest profile as "My profile" link in navigation bar
  def new
    @product = Product.new
    @profile = Profile.where(user: current_user).last
  end

  # Get current users latest profile
  def edit
    @profile = Profile.where(user: current_user).last
  end

  # Create a new product with current user as seller
  def create
    @product = Product.new(product_params.merge({seller_id: current_user.id}))

    if @product.save
      redirect_to @product, notice: 'Product was successfully created.'
    else
      render :new
    end
  end

  # Update current users product
  def update
    if @product.update(product_params)
      redirect_to @product, notice: 'Product was successfully updated.'
    else
      render :edit
    end
  end

  # Destroy current user product
  def destroy
    @product.destroy
     redirect_to products_url, notice: 'Product was successfully destroyed.'
  end

  # Get one specific category
  # Get all products of that category
  # Give access of adding to cart for each product of that specific category
  # Get the latest profile of current user
  def category
    @category = params[:category]
    @products = Product.where(category: @category)
    @profile = Profile.where(user: current_user).last
    @cart = Cart.new
  end

  # Get the name and all products of a specific seller
  # Give access to cart to all the products of that seller
  # Get the latest profile of current user
  def sellers_product_list
    seller_id = params[:seller_id]
    @products = Product.where(seller_id: seller_id)
    @profile = Profile.where(user: current_user).last
    @seller_name = Profile.where(user_id: seller_id).first.first_name
    @cart = Cart.new
  end






  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:title, :category, :price, :description, :seller_id, :image)
    end
end
