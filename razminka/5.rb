num = [0, 7, 14, 21, 28, 35, 42, 49, 56, 66, 70, 77, 84, 92, 98]

def numbers(num)
	num.to_a.select { |n| p n % 7 == 0}
end

numbers(num)
