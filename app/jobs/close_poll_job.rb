class ClosePollJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    poll = args.first
    
    #poll[:is_active] = false
    poll.update(is_active: false)
  end
end
