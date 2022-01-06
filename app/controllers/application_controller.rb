class ApplicationController < ActionController::Base

  def create
    @kitchencar.portraits.attach(params[:kitchencar][:portraits])
  end

end
