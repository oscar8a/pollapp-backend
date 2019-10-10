class UsersController < ApplicationController

  def index
    users = User.all

    render json: UserSerializer.new(users)
  end

  def show
    user = User.find(user_params[:id])

    render json: user, include: [:polls, :vote_options]
  end

  def create

  end

  private
  def user_params
    params.permit(:id, :username, :password, :email, :votes)
  end
end
