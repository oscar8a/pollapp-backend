class PollsController < ApplicationController

  def index
    polls = Poll.all

    # render json: polls
    options = {
      include: [:vote_options]
    }
    
    render json: PollSerializer.new(polls, options)
  end

  def show
  poll = Poll.find(poll_params[:id])

  render json: PollSerializer.new(poll)
  end

  def create
    poll = Poll.create(poll_params)

    # ADD WORKER HERE WITH THE TIME SCHEDULE USER WANTS POLL TO END
    # PollWorker.perform_in(5.second)

    render json: poll
  end

  def update
    poll = Poll.find(poll_params[:id])

    poll.update(poll_params)

    render json: poll
  end



  private
  def poll_params
    params.permit(:id, :user_id, :poll_name, :is_active)
    # params.require(:poll).permit(:user_id, :poll_name)
  end

end
