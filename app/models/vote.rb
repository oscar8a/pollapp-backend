class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :vote_option

  # validates_uniqueness_of :vote_option_id, scope: user_id 

  
end
