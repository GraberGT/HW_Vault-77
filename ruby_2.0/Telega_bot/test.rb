require 'telegram/bot'
require 'sinatra'
require 'json'
require 'activerecord'
require 'pg'


token = ''
Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
      case message
      when Telegram::Bot::Types::CallbackQuery
          case message.data
          when 'touch'
              bot.api.send_message(chat_id: message.from.id, text: "Don't touch me!")
          when 'test'
              bot.api.send_message(chat_id: message.from.id, text: "Don't test me!")
          end
      when Telegram::Bot::Types::Message
          case message.text
          when '/start'
            bot.api.sendMessage(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}")

              kb = [
                  Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Test', callback_data: 'test'),
                  Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Touch me', callback_data: 'touch'),
                  Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Switch to inline', switch_inline_query: 'some text') 
              ]
              markup = Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: kb)
              bot.api.send_message(chat_id: message.chat.id, text: 'Make a choice', reply_markup: markup)
          end
      end
  end
end


class Article < ActiveRecord::Base

end







