puts "Napishite znacheniya"

a = gets.chomp.to_f 
puts a

b = gets.chomp.to_f 
puts b

c = gets.chomp.to_f 
puts c


arr = [a, b, c].sort!

k1 = [0]
k2 = [1]
hypotenuse = [2]

if    hypotenuse**2 == k1**2 + k2**2
puts "Pryamougolniy"

elsif k1 = k2
puts "Ravnobedrenniy"

elsif hypotenuse = k1 = k2
puts "Ravnostoronniy" 
	
end
