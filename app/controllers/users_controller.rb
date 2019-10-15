class UsersController < ApplicationController

  def index
    users = User.all

    render json: UserSerializer.new(users)
  end

  def show
    user_id = params[:id]

    if user_id.to_i == logged_in_user_id
      user = User.find(user_id)
      render json: UserSerializer.new(user, include: [:polls])
    else 
      render json: {
        go_away: true
      }, status: :unauthorized
    end
  end

  def create
    user = User.create(user_params)
    
    if user.valid?
      render json: token(user)
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end 
  end

  def destroy
    user = User.find(params[:id])

    user.destroy
  end

  #FROM MEDIUM BLOG FOR AUTH
  # def find
  #   user = User.find_by(username: params[:user][:username])

  #   if user
  #     render json: user
  #   else
  #     errors = user.errors.full_messages
  #     render json: errors
  #   end
  # end

  private
  def user_params
    params.permit(:id, :username, :email, :password, :votes)
  end
end
