class MapsController < ApplicationController
  def index
    @microposts = Kitchencar.all.map do |kitchencar|
    kitchencar.microposts.first
    end
  end
end
