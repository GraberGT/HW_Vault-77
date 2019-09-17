def score_throws(radiuses)
	return 0 if radiuses.empty?

	arr = []
	radiuses.each do |i|
		radius = i.to_f

		arr << 0  if radius > 10
		arr << 10 if radius < 5
		arr << 5  if radius >= 5 && radius <= 10
	end

	score = arr.sum
	score += 100 if radiuses.all? { |i| i < 5}

	puts "score: #{score}"
end
