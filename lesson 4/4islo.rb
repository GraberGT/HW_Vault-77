def min_max(numbers) 

  array = numbers.split 

  digits = []

  array.each { |n| digits << n.to_i }

  puts digits.max 
  puts digits.min

end

numbers = "1 5 3 6 9 7 15 13 18 19 12 11"

min_max(numbers)