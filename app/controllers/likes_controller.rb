class LikesController < ApplicationController
  def create
    like = Like.find_or_create_by(user_id: params[:user_id], restaurant_id: params[:restaurant_id])
    render json: like, except: [:created_at, :updated_at]
  end

  def index
    likes = Like.all
    render json: likes, except: [:created_at, :updated_at]
  end

  def destroy
    thing = Like.find(params[:id]).destroy
    render json: thing
  end
end
