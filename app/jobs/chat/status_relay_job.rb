module Chat
  class StatusRelayJob < ApplicationJob
    queue_as :default

    def perform(user)
      ActionCable.server.broadcast(
        "chat::statuses", user_id: user.id, status: user.chat_status
      )
    end
  end
end
