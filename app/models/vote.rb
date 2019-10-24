class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :vote_option
  has_many :polls, through: :users

  # validates_uniqueness_of :vote_option, scope: [:vote_option_id, :user_id]
  validates_uniqueness_of :user, scope: [:poll_id, :user_id]

  
end
