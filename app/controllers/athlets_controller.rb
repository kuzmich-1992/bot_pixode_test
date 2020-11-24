# frozen_string_literal: true

class AthletsController < ActionController::Base
  respond_to :html, :json, :xml, :js
  require 'rest-client'
  require 'telegram/bot'
  layout 'application'
  @@step = 1
  TELEGRAM_BOT_TOKEN = '1288229656:AAHh9REQgomtG7Q1YFfK3AeTgn2lvxsr71g'
  TELEGRAM_CHAT_ID = '-440848523'

  def index
    @athlets = Athlet.all
  end

  def send_message
    @answer2 = Athlet.last(@@step).first.result
    Telegram::Bot::Client.run(TELEGRAM_BOT_TOKEN) do |bot|
      bot.api.send_message(chat_id: TELEGRAM_CHAT_ID.to_s, text: "best result is - #{@answer2}")
    end
    @@step += 1
    respond_to do |format|
      format.json { head :no_content }
      format.html { redirect_to root_path }
    end
  end
end
