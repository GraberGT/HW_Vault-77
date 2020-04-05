puts "Day"
day = gets.chomp.to_i

puts "Month"
month = gets.chomp.to_i

puts "Year"
year = gets.chomp.to_i

days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

if year % 4 == 0 || year % 400 == 0 || year % 100 != 0
days[1] = 29

end

if month == 1
result = day

end

sum = days[0...(month - 1)].sum + day

puts sum