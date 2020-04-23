arr = []

puts "What length array?"
num = gets.chomp.to_i
puts num

index = 0

while  index < num do
  arr << rand(100)
  index += 1
end

puts arr
puts "Max"
puts arr.max