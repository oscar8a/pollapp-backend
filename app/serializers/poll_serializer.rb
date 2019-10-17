class PollSerializer
  include FastJsonapi::ObjectSerializer
  has_many :vote_options
  has_many :votes, through: :vote_options

  attributes :id, :poll_name, :user_id, :is_active, :vote_options, :votes

end
