# frozen_string_literal: true

def min_max(num)
  a = num.split
  sort = []
  a.each { |n| sort << n.to_i }
  puts sort.min
  puts sort.max
end

num = '1 2 3 44 55 22 12 33'

min_max(num)
