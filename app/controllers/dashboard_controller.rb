class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @pets = policy_scope(Pet)
    @user_pets = @pets.select {|pet| pet.user == @user }
    @bookings = Booking.where(user: @user)
  end
end
