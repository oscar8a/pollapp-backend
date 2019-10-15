class Poll < ApplicationRecord
  belongs_to :user
  has_many :vote_options


  # def pollVotes
  #   poll = Poll.find(poll_params[:id])

  #   option1 = poll.vote_options.first
  #   option2 = poll.vote_options.second

  #   option1votes = option1.votes.count
  #   option2votes = option2.votes.count

  #   results = "cheese"
  #   # results = {option1[option_name] => option1votes, option2[option_name] => option2votes}

  #   return results
  # end
end
