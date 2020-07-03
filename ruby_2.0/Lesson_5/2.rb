# frozen_string_literal: true

def ask(array)
  puts array.min { |a, b| a.length <=> b.length }
  puts array.max { |a, b| a.length <=> b.length }
end

array = %w[ruby are awesome]
ask(array)
