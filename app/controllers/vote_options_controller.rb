class VoteOptionsController < ApplicationController

  def show
    vote_Option = VoteOption.find(vote_option_params[:id])

    render json: VoteOptionSerializer.new(vote_Option)
  end

  private
  def vote_option_params
    params.permit(:option_name, :poll_id)
  end

end
