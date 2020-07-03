# frozen_string_literal: true

a = ['a'..'z']

h = %w[a e i o u y].to_a

a.each.with_index(1) do |key, value|
  h[key] = value if h.include? key
end

puts h
