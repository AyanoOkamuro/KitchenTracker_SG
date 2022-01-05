class KitchencarsController < ApplicationController
  def show
    @kitchencar = Kitchencar.find(params[:id])
  end

  def index
  end
end
