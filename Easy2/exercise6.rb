# Odd numbers

# (1..99).each { |num| puts num if num.odd? }

# LS Solution

# value = 1
# while value <= 99
#   puts value
#   value += 2
# end

1.upto(99) do |number|
  puts number if number % 2 == 1
end