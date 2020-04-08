check = {}
sum = 0
loop do 

  puts "1. Напишите наименование"
  product = gets.chomp

  puts "2. Введите цену"
  price = gets.chomp.to_f

  puts "3. Введите количество"
  quantity = gets.chomp.to_f

  
  puts "0. Выход"
  puts "4. Добавить товар"
  
  puts "Выберите вариант: "
  input = gets.chomp.to_f

  check[product] = {"price": price, "quantity": quantity}
break if input == 0
end
  
  
  check.each {|product, hash| sum += hash["price"] * hash["quantity"]}

  puts check
  puts "#{sum}"