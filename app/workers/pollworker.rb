require 'sidekiq'

class PollCloseWorker
  include Sidekiq::Worker

  def perform()
    #DO SOMETHIN
    # Poll.update({is_active: false})
  end
end

# PollWorker.perform_async('bob', 5)

# PollWorker.perform_in(2.seconds, 'bob', 5)
# PollWorker.perform_at(4.seconds.from_now, 'bob', 5)