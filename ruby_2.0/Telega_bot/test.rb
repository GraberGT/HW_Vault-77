require 'telegram/bot'
require 'sinatra'
require 'json'
token = '1102820334:AAFcDB9e-6DbX2JS2LH9N-UWy__XseuuSeM'
Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      bot.api.sendMessage(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}")
    when '/Time table'
      bot.api.sendMessage(chat_id: message.chat.id, text: 'Time table')
    when '/Buy ticket'
      bot.api.sendMessage(chat_id: message.chat.id, text: "Buy ticket")
    when '/Buying tickets'
      bot.api.sendMessage(chat_id: message.chat.id, text: "Buying tickets")
    end
  end
end

