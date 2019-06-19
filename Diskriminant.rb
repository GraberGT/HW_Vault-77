a = gets.chomp.to_f
puts a

b = gets.chomp.to_f
puts b

c = gets.chomp.to_f
puts c

d = b**2 - 4 * a * c
puts d

x1 = (-b + Math.sqrt(d)) / 2 * a
puts x1

x2 = (-b - Math.sqrt(d)) / 2 * a
puts x2

if 
	d > 0
	puts "2 koren"
	puts x1, x2
elsif 

	d == 0
	puts "1 koren"
	puts x1, x2
else

	d < 0
	puts "koren net"
	
end
