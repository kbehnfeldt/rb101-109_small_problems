=begin
Input: 
  One positive integer
Output: 
  A string alternating between 1 and 0, beginning with 1, 
    that is equal to the length of the integer provided.

Rules:
  Must be a method definition named stringy that takes one argument.
    The argument must be a positive integer. It CANNOT be 0
  The method must return a string made up of alternating 1's and 0's
  The string length must match the given integer

Thoughts:
  Look into way to generate a string based on the length of the given integer?

---MENTAL MODEL---
Define a method named stringy that takes one argument, an intiger > 0
Use the provided integer to determine the length of a string of alternating 1's and 0's.
Return the string whose length is equil to the given integer.

---ALGORITHM---
SET - define a method named   stringy   that accepts one argument, an integer, named   number
SET - an empty array,   1_and_0


loop add a 1 or 0 to 1_and_0 until array length == integer
  if the array is empty, push 1
  if last element in array == 1, push 0
  if last element in array == 0, push 1

join 1_and_0 into a string
return the string

=end

# def stringy(number)
#   zero_and_one = []

#   until zero_and_one.length == number
#     if zero_and_one.empty?       
#       zero_and_one << 1
#     elsif zero_and_one.last == 1 
#       zero_and_one << 0 
#     elsif zero_and_one.last == 0 
#       zero_and_one << 1 
#     end
#   end

#   zero_and_one.join
# end

# LS Solution with modification

def stringy(size, start = 1)
  numbers = []

  unless start == 0
    a = 1
    b = 0
  else
    a = 0
    b = 1
  end

  size.times do |index|
    number = index.even? ? a : b
    numbers << number
  end

  numbers.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4,) == '1010'
puts stringy(7) == '1010101'
puts stringy(7, 0) == '0101010'