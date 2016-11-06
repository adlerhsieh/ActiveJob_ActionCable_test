class OddJob < ApplicationJob
  queue_as :odd

  def perform(*args)
    Odd.create(content: Time.now.strftime("%Y-%m-%d %H:%M:%S"))
    ActionCable.server.broadcast("MocksChannel", foo: 'bar')
  end
end
