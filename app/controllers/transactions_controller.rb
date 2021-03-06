
class TransactionsController< ApplicationController

  # Fetching the stripe api key form credentials
  # querying a cart to process the payment when current user is the buyer
  # sum ups the total cost of cart products
  # creating a new customer and charge in Stripe to process the bill
  # creating new order with the details of buyers
  # saving the order items for showing those in order list
  # after saving the items, destroying the cart
  # if any error occurs (like item is not saved), redirecting user to my cart page
  def create
    Stripe.api_key = Rails.application.credentials.dig(:stripe, :development).dig(:secret_key)
    carts = Cart.where(buyer: current_user)
    amount = carts.map(&:product).map(&:price).sum.to_i

    begin


      customer = Stripe::Customer.create(
          :email => params[:stripeEmail],
          :source  => params[:stripeToken]
      )

      Stripe::Charge.create(
          :amount       => amount * 100,
          :currency     => "aud",
          :customer     => customer.id,
          :description  => "payment from plantish"
      )


      order = Order.create!(
          buyer_id: current_user.id,
          paid: true,
          amount: amount,
          fulfilled: false
      )

      carts.map do |c|
        order_item = OrderItem.new( product_id: c.product.id, order_id: order.id)
        order_item.save!
      end

      carts.map{ |c| c.destroy }

      redirect_to orders_path
    rescue Stripe::CardError => e
      @error = e
      redirect_to carts_path, notice: @error
    end

  end

end
