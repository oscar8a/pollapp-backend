class VoteOption < ApplicationRecord
  belongs_to :poll
  has_many :votes
  has_many :users, through: :votes

end
