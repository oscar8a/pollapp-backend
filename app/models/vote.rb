class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :vote_option

  # validates_uniqueness_of :poll_id, scope: [:user_id, :vote_option_id]
  # validates_uniqueness_of :vote_option, scope: [:vote_option_id, :user_id]
  validates_uniqueness_of :user_id, scope: [:vote_option_id, :user_id]

  validates :unique_poll_vote?, inclusion: [true] 

  def poll
    vote_option.poll
  end

  def unique_poll_vote?
    poll.votes.where(user_id: user.id).empty?
  end
end
