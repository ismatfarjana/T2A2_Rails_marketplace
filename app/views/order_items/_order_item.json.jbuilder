json.extract! order_item, :id, :product, :order, :created_at, :updated_at
json.url order_item_url(order_item, format: :json)
