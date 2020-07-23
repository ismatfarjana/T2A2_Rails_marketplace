Rails.application.routes.draw do
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

end
