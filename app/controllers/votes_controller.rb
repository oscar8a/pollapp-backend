class VotesController < ApplicationController

  def create
    @userVotes = Vote.where(user_id: params[:user_id], vote_option_id: params[:vote_option_id])
    
    @userVote = Vote.find_or_initialize_by(vote_params)

    # byebug
    if @userVote.new_record?
      @userVote.save
      render json: @userVote, message: "Your Vote has been Casted Successfully"
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
