puts "Napishite znacheniya"

a = (gets.chomp).to_f
puts a

b = (gets.chomp).to_f
puts b

c = (gets.chomp).to_f
puts c

if 
	(c **2) == (a **2) + (b **2)
    puts "Pryamougolniy"
else
	a = b = c
    puts "Ravnostoronniy i Ravnobedrenniy" 
end

