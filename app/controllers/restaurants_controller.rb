class RestaurantsController < ApplicationController
  def index
    restaurants = Restaurant.all
    render json: restaurants, only: [:name, :address]
  end
end
