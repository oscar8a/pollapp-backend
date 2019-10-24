

class VotesController < ApplicationController

  def create
    @userVotes = Vote.where(user_id: params[:user_id], vote_option_id: params[:vote_option_id])

  
    if @userVotes.empty?
      vote = Vote.create(vote_params)

      render json: vote, message: "Your Vote has been Casted Successfully"
    else
      render json: { errors: ["There is a vote already casted with your credentials for this option"] }, status: :forbidden
    end
    # voteOption = VoteOption.find(vote.vote_option_id)
    # voteOption.addVoteToVoteOptionCounter
  end

  private
  def vote_params
    params.permit(:user_id, :vote_option_id)
  end

end
