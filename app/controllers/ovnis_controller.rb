class OvnisController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @ovnis = Ovni.all
  end

  def new
    @ovni = Ovni.new
  end
end
