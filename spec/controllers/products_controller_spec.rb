require 'rails_helper'

RSpec.describe ProductsController, type: :controller do

  describe "#index" do
    it "returns 200" do
      current_user = User.create!(email: "test@test.com", password: "111111")
      sign_in current_user

      get :index
      expect(response.status).to eq(200)
    end
  end

  describe "#create" do
    it "creates new product" do
      current_user = User.create!(email: "test@test.com", password: "111111")
      sign_in current_user

      post :create, params: {product: {title: "cucumber", category: "vegetable", price: 2, description: "big string", seller_id: current_user.id}}
      expect(response.status).to eq(200)
    end
  end


end
