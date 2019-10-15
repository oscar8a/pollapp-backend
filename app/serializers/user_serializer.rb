class UserSerializer
  include FastJsonapi::ObjectSerializer

  # has_many :votes
  # has_many :vote_options, through: :votes
  has_many :polls

  attributes :username, :email
end
