a = (gets.chomp).to_i
puts a

b = (gets.chomp).to_i
puts b

c = (gets.chomp).to_i
puts c

D = ((a * x) ** 2 ) + (b * x) + c == b ** 2 - (4 * a * c)
puts D

if 
	D > 0
	puts "2 koren"
elsif 
	D == 0
	puts "1 koren"
else
	D < 0
	puts "koren net"
	
end