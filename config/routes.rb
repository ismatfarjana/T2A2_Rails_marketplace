Rails.application.routes.draw do
  resources :order_items
  resources :orders
  resources :carts
  resources :products
  resources :profiles
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'market#home'
  get '/', to: 'market#home'
  get '/category', to: 'market#home'
  get '/about', to: 'market#about'
  get '/contact', to: 'market#contact'

  get '/categories/:category', to: 'products#category'

  get '/products/seller/:seller_id', to: 'products#sellers_product_list', as: 'sellers_product_list'

  post '/transactions', to: 'transactions#create'

end
