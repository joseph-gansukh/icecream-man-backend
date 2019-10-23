class RestaurantsController < ApplicationController
  def create
    resturant = Restaurant.find_or_create_by(place_id: params[:place_id])
    render json: resturant, include: [:comments, :likes], only: [:id,:place_id]
  end

  def index
    restaurants = Restaurant.all
    render json: restaurants, include: [:comments, :likes], only: [:place_id, :id]
  end
end
