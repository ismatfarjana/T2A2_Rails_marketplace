class MarketController < ApplicationController
  #home controller for static homepage of marketplace
  # before_action :authenticate_user!
  def home
    @profile = Profile.where(user: current_user).first
    @user = current_user
  end

  def category

  end


  def about

  end
  def contact

  end


end