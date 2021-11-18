class ReservationsController < ApplicationController

  def index
    @reservations = Reservation.all
    # authorize @Reservations
    @reservations = policy_scope(Reservation)
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

  private

  def reservation_params
    params.require(:reservation).permit(:dates, :return_date)
  end
end
