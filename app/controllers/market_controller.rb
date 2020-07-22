class MarketController < ApplicationController
  #home controller for static homepage of marketplace
  # before_action :authenticate_user!
  before_action :hold_profile
  def home

  end

  def category

  end


  def about


  end
  def contact
    

  end

  private

  def hold_profile
    @profile = Profile.where(user: current_user).first
    @user = current_user
  end


end