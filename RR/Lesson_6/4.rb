puts "Choice your weapon!"

puts "1.Stone, 2.Paper, 3.Scissors"
a = gets.chomp.to_i

b = rand(1..3)

if a == 1 && b == 3
  puts b 
  puts "You win"
  
elsif a == 2 && b == 1
  puts b 
  puts "You win"

elsif a == 3 && b == 2
  puts b 
  puts "You win"

elsif a = b 
  puts "Repeat"

else 
  puts "AI win"
  
end

