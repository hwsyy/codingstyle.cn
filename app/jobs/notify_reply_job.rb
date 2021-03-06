class NotifyReplyJob < ActiveJob::Base
  queue_as :notifications

  def perform(reply_id)
    Reply.notify_reply_created(reply_id)
  end
end
