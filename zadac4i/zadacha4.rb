a = [5, 6, 2, 6, 8, 9, 3, 1, 2, 7, 4]

a.sort_by do |sort|
  -sort
end

puts a.sort.reverse