puts "Enter first side"
a = gets.chomp.to_i

puts "Enter second side"
b = gets.chomp.to_i

puts "Enter third side"
c = gets.chomp.to_i

array = [a,b,c]
hypotenuse = array.sort![2]
kat1 = array[0]
kat2 = array[1]
sum = kat1 + kat2

right = hypotenuse **2 == kat1 **2 + kat2 **2

if right
  puts "This triangle is right angled"
elsif hypotenuse && kat1 == kat2
  puts "This is right angled triangle and equilaterial"
elsif (sum == hypotenuse) && (kat1 == kat2 || kat1 == hypotenuse || hypotenuse == kat2)
  puts "This is triangle with equal sides but not right angled"
else
  puts "This is regular triangle"
end



