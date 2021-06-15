# Convert a Number to a String!

# #---option 1---
# def integer_to_string(ingeger)
#   ingeger.digits.reverse.join
# end

# #---option 2---
# def integer_to_string(integer)
#   integer_array = []

#   loop do
#     integer_array << integer % 10
#     break if integer == 0
#     integer /= 10
#     break if integer == 0
#   end

#   integer_array.join.reverse
# end

#---LS Solution---

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10) # number keeps getting reassigned. remainder is the index for the array
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end


p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'