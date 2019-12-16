class Vote < ApplicationRecord
  belongs_to :vote_option
  belongs_to :user

  validates :unique_poll_vote?, inclusion: [true] 

  def poll
    vote_option.poll
  end

  def unique_poll_vote?
    poll.votes.where(user_id: user.id).empty?
  end
end
