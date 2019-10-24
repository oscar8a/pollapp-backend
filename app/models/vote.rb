class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :vote_option

  # validates_uniqueness_of :poll_id, scope: [:user_id, :vote_option_id]
  # validates_uniqueness_of :vote_option, scope: [:vote_option_id, :user_id]
  validates_uniqueness_of :user_id, scope: [:vote_option_id, :user_id]

  
end
