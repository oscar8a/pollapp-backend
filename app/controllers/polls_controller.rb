class PollsController < ApplicationController

  def index
    polls = Poll.all

    options = {
      include: [:vote_options]
    }
    
    render json: PollSerializer.new(polls)
    # render json: PollSerializer.new(polls, options)
  end

  def show
  poll = Poll.find(poll_params[:id])

  render json: PollSerializer.new(poll)
  end

  def create
    duration = poll_params[:duration]

    parameters = poll_params.except(:duration)

    poll = Poll.create(parameters)

    # ADD WORKER HERE WITH THE TIME SCHEDULE USER WANTS POLL TO END
    # PollWorker.perform_in(5.second)
    ClosePollJob.set(wait: duration.to_i.minutes).perform_later(poll)

    render json: poll
  end

  def update
    poll = Poll.find(poll_params[:id])

    poll.update(poll_params)

    render json: poll
  end

  private
  def poll_params
    params.permit(:id, :user_id, :poll_name, :is_active, :duration)
    # params.require(:poll).permit(:user_id, :poll_name)
  end

end