class KitchencarsController < ApplicationController
  def show
    @kitchencar = Kitchencar.find(params[:id])
    @microposts = @kitchencar.microposts

  end

  def index
  end
end
