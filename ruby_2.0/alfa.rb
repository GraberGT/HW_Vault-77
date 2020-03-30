a = ('a'...'z').to_a

h = ['a', 'e', 'i', 'o', 'u', 'y'].to_a


a.each.with_index(1) do |char, index|
	if h.include? (char)
		h[char] = index
	end
end

puts h