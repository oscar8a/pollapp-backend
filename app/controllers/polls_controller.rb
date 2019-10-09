class PollsController < ApplicationController

  def index
    polls = Poll.all

    render json: PollSerializer.new(polls)
  end

  def show
  poll = Poll.find(poll_params[:id])

  render json: PollSerializer.new(poll)
  end

  def create

  end



  private
  def poll_params
    params.permit(:poll_name)
  end

end
