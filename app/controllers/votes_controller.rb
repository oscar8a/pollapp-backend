class VotesController < ApplicationController

  def create
    vote = Vote.create(vote_params)

    render json: vote

    # voteOption = VoteOption.find(vote.vote_option_id)
    # voteOption.addVoteToVoteOptionCounter
  end

  private
  def vote_params
    params.permit(:user_id, :vote_option_id)
  end

end
