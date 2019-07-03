check = {}

loop  do 

  puts "1. Напишите наименование"
  product = gets.chomp.to_s 

  puts "2. Введите цену"
  price = gets.chomp.to_i 

  puts "3. Введите количество"
  quantity = gets.chomp.to_i

  

  puts "0. Выход"
  puts "4. Добавить товар"
  
  puts "Выберите вариант: "
  input = gets.chomp.to_i


break if input == 0
end
  check[product] = {price: price, quantity: quantity, total: price * quantity}
  
  amount = 0
  
  check.each{|name, hash| amount += hash[:total]}

  puts check
  puts amount

