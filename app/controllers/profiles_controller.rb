class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # Get all users in the community page
  # Get current users latest profile
  def index
    @profiles = Profile.all
    @profile = Profile.where(user: current_user).last
  end


  # Get current users latest profile
  def show
    @profile = Profile.where(user: current_user).last
  end

  # Initialize a profile
  def new
    @profile = Profile.new

  end

  # GET current users latest profile
  def edit
    @profile = Profile.where(user: current_user).last
  end

  # Create a new profile with current user
  def create
    @profile = Profile.new(profile_params.merge({user: current_user}))

    if @profile.save
      redirect_to @profile, notice: 'Profile was successfully created.'
    else
      format.html { render :new }
    end
  end

  # Update current users latest profile
  def update
    if @profile.update(profile_params)
      redirect_to @profile, notice: 'Profile was successfully updated.'
    else
      render :edit
    end
  end

  # Destroy current users latest profile
  def destroy
    @profile.destroy
     redirect_to profiles_url, notice: 'Profile was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
      @user = current_user
    end

    # Only allow a list of trusted parameters through.
    def profile_params
      params.require(:profile).permit(:first_name, :last_name, :abn, :address, :state, :postcode, :mobile_number, :user_id, :picture)
    end
end
