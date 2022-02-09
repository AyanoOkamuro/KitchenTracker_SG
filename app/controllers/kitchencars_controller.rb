class KitchencarsController < ApplicationController
  before_action :exist_kitchencar, only: [:show]

  def show
    @microposts = @kitchencar.microposts.with_attached_images.page(params[:page]).per(9)
    @menus = Menu.with_attached_image.where(kitchencar_id: params[:id])[0..2]
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
