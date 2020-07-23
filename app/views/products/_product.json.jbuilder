json.extract! product, :id, :title, :category, :price, :description, :seller_id, :created_at, :updated_at
json.url product_url(product, format: :json)
