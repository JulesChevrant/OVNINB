class OvnisController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    if params["search"]
      @ovnis = policy_scope(Ovni).global_search(params["search"]["query"])
    else
      @ovnis = policy_scope(Ovni)

    end
  end

  def show
    @ovni = Ovni.find(params[:id])
    @reservation = Reservation.new
    authorize @ovni
  end

  def new
    @ovni = Ovni.new
    authorize @ovni
  end

  def create
    @ovni = Ovni.new(ovnis_params)
    @ovni.user = current_user
    authorize @ovni
    if @ovni.save
      redirect_to ovni_path(@ovni)
    else
      render :new
    end
  end

  def edit
    @ovni = Ovni.find(params[:id])
  end

  def destroy
    @ovni = Ovni.find(params[:id])
    @ovni.destroy
    redirect_to ovnis_path
  end

  private

  def ovnis_params
    params.require(:ovni).permit(:name, :photo, :price, :details, :city)
  end
end
