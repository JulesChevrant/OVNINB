class OvnisController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show new]

  def index
    @ovnis = Ovni.all
  end

  def show
    @ovni = Ovni.find(params[:id])
  end

  def new
    @ovni = Ovni.new
    authorize(@ovni)
  end

  def edit
    @ovni = Ovni.find(params[:id])
  end

  def destroy
    @ovni = Ovni.find(params[:id])
    @ovni.destroy
    redirect_to ovnis_path
  end
end
