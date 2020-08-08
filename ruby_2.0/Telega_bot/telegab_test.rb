require 'telegram/bot'
token = 'token'
Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      bot.api.sendMessage(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}")
    when '/Time table'
      bot.api.time_table(chat_id: message.chat.id, text: 'Time table')
    when '/Buy ticket'
      bot.api.buy_ticket(chat_id: message.chat.id, text: "Buy ticket")
    when '/Buying tickets'
      bot.api.tickets(chat_id: message.chat.id, text: "Buying tickets")
    end
  end
end



def time_table
  puts stations #stations = []
end

def buy_ticket
  puts 'Enter your name'
  @name = gets.chomp.to_s
  puts 'Enter your sir name'
  @sname = gets.chomp.to_s
  puts "Enter your date of birth"
  @dateb = gets.chomp.to_s
  puts 'Enter your passport number'
  @numpas = gets.chomp.to_s
end

def tikcets
  puts tickets #tickets = []
end






class Client
  field :name, type: String
  field :sname, type: String
  field :dateb, type: String
  field :numpas, type: String

end

class Ticket
  field :name, :sname, :dateb, :numpas, type: Array, default: []
