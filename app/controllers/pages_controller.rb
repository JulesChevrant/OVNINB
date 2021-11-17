class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: :home

  def home
    @ovnis = Ovni.last(4)
  end
end
