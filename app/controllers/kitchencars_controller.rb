class KitchencarsController < ApplicationController
  def show
    @kitchencar = Kitchencar.find_by(params[:id])
  end

  def index
  end
end
