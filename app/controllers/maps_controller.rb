class MapsController < ApplicationController
  def index
    @microposts = []
    Kitchencar.all.each do |kitchencar|
      if kitchencar.microposts.first
        @microposts << kitchencar.microposts.first
      end
    end
  end
end
