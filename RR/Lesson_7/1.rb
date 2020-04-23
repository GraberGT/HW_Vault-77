puts 'Введите N'
number = gets.chomp.to_i

array = []

index = 1

summa = 0

while index <= number do
  
  array << index

  summa += index

  index += 1
end

puts array.sum.to_s

