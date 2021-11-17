class OvnisController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show new]
  #skip_before_action :skip_authorization, only: [:index, :show]

  def index
    @ovnis = policy_scope(Ovni)
    skip_authorization
  end

  def show
    @ovni = Ovni.find(params[:id])
    #authorize(@ovni)
    skip_authorization
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
