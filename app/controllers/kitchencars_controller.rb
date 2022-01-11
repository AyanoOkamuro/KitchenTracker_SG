class KitchencarsController < ApplicationController
  before_action :exist_kitchencar, only: [:show]

  def show
    @microposts = @kitchencar.microposts
  end

  def index
    redirect_to root_url
  end

  private

  def exist_kitchencar
    @kitchencar = Kitchencar.find_by(id: params[:id])
    if @kitchencar.nil?
      redirect_to root_url
    end
  end
end
