class AthletsController < ActionController::Base
require 'rest-client'
require 'telegram/bot'
TOKEN = '1288229656:AAHh9REQgomtG7Q1YFfK3AeTgn2lvxsr71g'
ANSWER = Athlet.maximum(:result)
  
  def index
    @athlets = Athlet.all
  end
  
  def send_message
    Telegram::Bot::Client.run(TOKEN) do |bot|
      bot.listen do |message|
        bot.api.send_message(chat_id: message.chat.id, text: "best result is - #{ANSWER}")
      end
    end
  end
  
end
