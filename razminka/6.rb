numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]

def even(numbers)
	p numbers.select { |num| num.odd? }.sum       
end

even(numbers)