# Odd

=begin
Any whole number is provided. The number is evaluated as even or odd. If the mumber is odd, the boolean true is returned. 
If the number is even, the boolean false is returned
-Algo-
A whole number is given
the number is evaluated to see if it's true or false.
  true is returned if odd. 
  Otherwise false is returned.
=end

# def is_odd?(number)
#   if number % 2 == 1
#     return true
#   else
#     return false
#   end
# end

# def is_odd?(number)
#   number % 2 == 1 ? true : false
# end

def is_odd?(number)
  number.remainder(2) != 0
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

# LS solution
# def is_odd?(number)
#   number % 2 == 1
# end