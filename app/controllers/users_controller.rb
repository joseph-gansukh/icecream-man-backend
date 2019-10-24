class UsersController < ApplicationController
  def create
    username = params[:username]
    username = User.find_or_create_by(name: username)
    render json: username, only: [:name, :id], include: [:likes, :comments]
  end

  def index
    users = User.all
    render json: users, only: [:name]
  end

  def show
    user = User.find(params[:id])
    render json: user, include: [:likes, :comments]
  end
end
