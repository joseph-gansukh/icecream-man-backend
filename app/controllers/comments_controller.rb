class CommentsController < ApplicationController
    def create
        comment = Comment.create(content: params[:content], user_id: params[:user_id], restaurant_id: params[:restaurant_id], username: params[:username])
        render json: comment, only: [:content, :user_id, :restaurant_id, :username], include: [:user]
    end

    def index
        comments = Comment.all
        render json: comments
    end
end
