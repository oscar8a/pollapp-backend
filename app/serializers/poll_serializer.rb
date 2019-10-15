class PollSerializer
  include FastJsonapi::ObjectSerializer
  attributes :poll_name, :vote_options

end
