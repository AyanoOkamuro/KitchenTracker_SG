class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def create
    @kitchencar.portraits.attach(params[:kitchencar][:portraits])
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :location, :introduction, portraits: []])
  end
end
