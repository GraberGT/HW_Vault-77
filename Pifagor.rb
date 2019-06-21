puts "Napishite znacheniya"

a = gets.chomp.to_f 
puts a

b = gets.chomp.to_f 
puts b

c = gets.chomp.to_f 
puts c


arr = [a, b, c].sort!      или так     my_array = [a, b, c].sort!                     

k1 = [0]                               my_array[0] = k1
k2 = [1]                               my_array[1] = k2
hypotenuse = [2]                       my_array[2] = hypotenuse
 
if    hypotenuse**2 == k1**2 + k2**2
puts "Pryamougolniy"

elsif k1 = k2
puts "Ravnobedrenniy"

elsif hypotenuse = k1 = k2
puts "Ravnostoronniy" 
	
end
