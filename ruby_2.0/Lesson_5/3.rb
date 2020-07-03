# frozen_string_literal: true

cart = {}
sum = 0
loop do
  print 'Введите название товара (или "стоп"): '
  product = gets.chomp
  break if product == 'стоп'

  print 'цену: '
  price = gets.chomp.to_f

  print 'кол-во: '
  count = gets.chomp.to_f

  cart[product] = { 'price' => price, 'count' => count }
end

cart.each { |_product, hash| sum += hash['price'] * hash['count'] }

puts cart
puts "Итого: #{sum}"
