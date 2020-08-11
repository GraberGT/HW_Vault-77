require 'telegram/bot'
require 'sinatra'
require 'json'
require 'mongoid'
require 'net/http'


token = '1102820334:AAFcDB9e-6DbX2JS2LH9N-UWy__XseuuSeM'
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
                  Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Buy ticket', callback_data: 'Buy ticket'),
                  Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Timetable', callback_data: 'Timetable'),
                  Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Tickets', switch_inline_query: 'Tickets') 
              ]
              markup = Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: kb)
              bot.api.send_message(chat_id: message.chat.id, text: 'Make a choice', reply_markup: markup)
          end
      end
  end
end

def process_input(message)
  case message.text

  when /,\s*/
    user_info = message.text.split(',').map(&:strip)
    
    data = {
      first_name:      user_info[0],
      last_name:       user_info[1],
      birth_date:      user_info[2],
      passport_number: user_info[3],
      start_date:      user_info[4],
      route_name:      user_info[5],
      user_id: message.chat.id
    }
    res = post_request("#{API_HOST}/tickets/buy", data)
    text = (@resp_code == '201' ? "Your data saved" : "Error: #{res}")

    @bot.api.send_message(chat_id: message.chat.id, text: text, reply_markup: @markup)
  else
    @bot.api.send_message(
      chat_id: message.chat.id,
      reply_markup: @markup
      )
  end
end

def process_callback(message)
  case message.data
  when 'buy_ticket'
    @bot.api.send_message(
      chat_id: message.from.id,
      text: "Write down data in following format:\n" \
            "First name, Last name, Birth Date, Passport No., Trip Date Time, Route Name"
      )
  when 'timetable'
    timetable = get_request("#{API_HOST}/timetables")
    text = timetable.each_with_object(''){ |timetable, accum| accum << "#{timetable['route']}, #{timetable['date']}\n" }
    @bot.api.send_message(
      chat_id: message.from.id,
      text: text,
      reply_markup: @markup
      )
  when 'my_tickets'
    tickets = get_request("#{API_HOST}/tickets/user/#{message.from.id}")
    text = tickets.each_with_object(''){ |ticket, accum| accum << "#{ticket['passenger_name']}, #{ticket['route']}, #{ticket['date']}\n" }
    @bot.api.send_message(
      chat_id: message.from.id,
      text: text,
      reply_markup: @markup
      )
  else
    @bot.api.send_message(chat_id: message.from.id, text: 'Bye!')
  end
end


def get_request(url)
  uri = URI(url)
  set_connection(uri)

  req = Net::HTTP::Get.new(uri)
  parse_response(req)
end

def post_request(url, body = '')
  uri = URI(url)
  set_connection(uri)

  req = Net::HTTP::Post.new(uri)
  req['Content-Type'] = 'application/json'
  req.body = body.to_json

  parse_response(req)
end

def parse_response(request)
  res = @http.request(request)
  @resp_code = res.code
  JSON.parse(res.body) unless res.body.empty?
end

def set_connection(uri)
  @http = Net::HTTP.new(uri.host, uri.port)
  @http.use_ssl = true if uri.instance_of?(URI::HTTPS)
end
end