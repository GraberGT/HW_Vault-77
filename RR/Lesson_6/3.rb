cars = ["Toyota", "BMW", "MB", "Mini", "KIA",]

puts cars.size.to_s

puts "Show your number!"
num = gets.chomp.to_i

if num < cars.size
  puts "You are win #{cars[num]}"

else
  puts "Win are near"

end

