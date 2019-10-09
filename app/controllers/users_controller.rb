class UsersController < ApplicationController

  def index
    users = User.all

    render json: UserSerializer.new(users)
  end

  def show
    user = User.find(user_params[:id])

    render json: UserSerializer.new(user)
  end

  def create

  end

  private
  def user_params
    params.permit(:id, :username, :password, :email)
  end
end
