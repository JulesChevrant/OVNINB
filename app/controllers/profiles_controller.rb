class ProfilesController < ApplicationController
  def show
    @user = current_user
    @reservations = Reservation.where(user: @user)
    skip_authorization

  end


end
