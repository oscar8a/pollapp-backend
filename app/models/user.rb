# create_table :users do |t|
#   t.string :username
#   t.string :email
#   t.string :password

#   t.timestamps
# end

class User < ApplicationRecord

  has_many :votes
  has_many :vote_options, through: :votes
  has_many :polls

  has_secure_password

  validates :username, uniqueness: true
  validates :email, uniqueness: true
  
end
