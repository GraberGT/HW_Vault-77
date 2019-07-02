string = ['apple', 'mac', 'lenovo', 'samsung', 'hp']

def length(string)

	sized = []

    string.each { |n| sized << string.size }

    sized.sort.sum

	puts sized.sum


end

length(string)
