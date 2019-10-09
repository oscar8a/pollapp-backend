class Poll < ApplicationRecord
  belongs_to :user
  has_many :vote_options
end
