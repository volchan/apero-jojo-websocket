class IndexChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'index'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
