class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @products = Product.where(seller_id: current_user.id)
    @profile = Profile.where(user: current_user).last
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @profile = Profile.where(user: current_user).last
    @cart = Cart.new
  end

  # GET /products/new
  def new
    @product = Product.new
    @profile = Profile.where(user: current_user).last
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params.merge({seller_id: current_user.id}))

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  def category
    @category = params[:category]
    @products = Product.where(category: @category)
    @profile = Profile.where(user: current_user).last
  end


  def sellers_product_list
    seller_id = params[:seller_id]
    @products = Product.where(seller_id: seller_id)
    @profile = Profile.where(user: current_user).last
    @seller_name = Profile.where(user_id: seller_id).first.first_name
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
