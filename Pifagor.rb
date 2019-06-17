a = (gets.chomp).to_i
puts a

b = (gets.chomp).to_i
puts b

c = (gets.chomp).to_i
puts c

if 
	(c ** 2) == (a ** 2) + (b ** 2)
    puts "Pifagor theory"
elsif 
	c < a + b
	puts "None"
else
	c > a + b
	puts "None 2"
end

