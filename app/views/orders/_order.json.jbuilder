json.extract! order, :id, :buyer, :seller, :paid, :amount, :decimal, :fulfilled, :created_at, :updated_at
json.url order_url(order, format: :json)
