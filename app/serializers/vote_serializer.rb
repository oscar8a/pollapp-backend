class VoteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :vote_option
end
