class TokensController < ApplicationController

  def create
    user = User.find_by("lower(username) = ?", params[:username].downcase)
    if user && user.authenticate(params[:password])
      render json: token(user)
    else
      render json: { errors: [ "User Not Found" ] }, status: :unprocessable_entity
    end 
  end

end