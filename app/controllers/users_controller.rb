class UsersController < ApplicationController
  def create
    username = params[:username]
    username = User.find_or_create_by(name: username)
    render json: username, only: [:name]
  end

  def index
    users = User.all
    render json: users, only: [:name]
  end
end
