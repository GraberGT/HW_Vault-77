a = ['a'..'z']

h = ['a', 'e', 'i', 'o', 'u', 'y'].to_a

a.each.with_index(1) do |key, value|
  if h.include? (key)
    h[key] = value
  end
end

puts h