class ReservationsController < ApplicationController

  def index
    @reservations = policy_scope(Reservation)

    skip_authorization
  end

  def new
    @reservation = Reservation.new
    authorize @reservation
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @ovni = Ovni.find(params[:ovni_id])
    @reservation.ovni = @ovni
    @reservation.user = current_user
    authorize @reservation
    if @reservation.save!
      redirect_to ovnis_path
    else
      redirect_to ovni_path(@ovni)
    end
  end

  def approve
    skip_authorization
    reservation = Reservation.find(params[:id])
    reservation.update(status: true)
    redirect_to reservations_path
  end

  def refuse
    skip_authorization
    reservation = Reservation.find(params[:id])
    reservation.update(status: false)
    redirect_to reservations_path
  end

  private

  def reservation_params
    params.require(:reservation).permit(:dates, :return_date)
  end
end
