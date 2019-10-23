class VoteOption < ApplicationRecord
  belongs_to :poll
  has_many :votes
  has_many :users, through: :votes

  # validates_uniqueness_of :votes, scope: [:poll_id, :vote_option_id]

end
