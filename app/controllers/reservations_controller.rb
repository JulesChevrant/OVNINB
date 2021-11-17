class ReservationsController < ApplicationController

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @ovni = Ovni.find(params[:ovni_id])
    @reservation.ovni = @ovni
    @reservation.user = current_user
    skip_authorization
    if @reservation.save!
      redirect_to profile_path
    else
      redirect_to ovni_path(@ovni)
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:dates)
  end
end
