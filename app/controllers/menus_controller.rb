class MenusController < ApplicationController
  before_action :correct_user, only: [:edit, :update, :destroy]

  def new
    @menu = Menu.new
  end

  def create
    @menu = current_kitchencar.menus.build(menu_params)
    if @menu.save
      flash[:success] = "メニューを作成しました"
      redirect_to kitchencar_menus_path
    else
      flash.now[:alart] = "メニューを作成できませんでした"
      render 'homes/top'
    end
  end

  def index
    @menus = Menu.all
  end

  def edit
  end

  def update
    if @menu.update(menu_params)
      flash[:success] = "更新しました!"
      redirect_to kitchencar_menus_path
    else
      flash.now[:alart] = "更新できませんでした!"
      render 'homes/top'
    end
  end

  def destroy
    @menu.destroy
    flash[:success] = "削除しました!"
    redirect_to request.referrer || kitchencar_menus_path
  end

  private

  def menu_params
    params.require(:menu).permit(:name, :description, :price, :image)
  end

  def correct_user
    @menu = current_kitchencar.menus.find_by(id: params[:id])
    redirect_to root_url if @menu.nil?
  end

end
