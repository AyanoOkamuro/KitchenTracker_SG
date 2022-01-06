class MicropostsController < ApplicationController
  before_action :correct_user, only: [:edit, :update, :destroy]

  def index
    @micropost = Micropost.new
    @microposts = Micropost.all
  end

  def create
    @micropost = current_kitchencar.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "つぶやきました!"
      redirect_to microposts_path
    else
      flash.now[:alart] = "つぶやけませんでした!"
      render 'homes/top'
    end
  end

  def edit
  end

  def update
    if @micropost.update(micropost_params)
      flash[:success] = "更新しました!"
      redirect_to microposts_path
    else
      flash.now[:alart] = "更新できませんでした!"
      render 'homes/top'
    end
  end

  def destroy
    @micropost.destroy
    flash[:success] = "削除しました!"
    redirect_to request.referrer || microposts_path
  end

  private

  def micropost_params
    params.require(:micropost).permit(:content)
  end

  def correct_user
    @micropost = current_kitchencar.microposts.find_by(id: params[:id])
    redirect_to root_url if @micropost.nil?
  end
end
