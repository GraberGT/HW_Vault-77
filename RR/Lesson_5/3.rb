puts 'Что у вас на руках? 1. Рубли 2. Доллары'
currency = gets.chomp

puts 'Сколько сейчас стоит 1 доллар?'
usd_rate = gets.to_f

if currency == '1'
  puts 'Сколько у вас рублей?'
  rub = gets.to_f
  usd = (rub / usd_rate).round(2)
  puts 'Ваши запасы равны: ' + usd.to_s + ' $'
else
  puts 'Сколько у вас долларов?'
  usd = gets.to_f
  rub = (usd * usd_rate).round(2)
  puts 'Ваши запасы равны: ' + rub.to_s + ' руб.'
end

