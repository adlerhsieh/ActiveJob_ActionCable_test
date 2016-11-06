class MocksChannel < ApplicationCable::Channel
  def subscribed
    stream_from self.class.name

    sleep 1
    ActionCable.server.broadcast("MocksChannel", this: 'is connected')
  end

  def get
    
  end
end
