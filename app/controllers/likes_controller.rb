class LikesController < ApplicationController
  def index
    likes = Like.all
    render json: likes, except: [:created_at, :updated_at]
  end
end
