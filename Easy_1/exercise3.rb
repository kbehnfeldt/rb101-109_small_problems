# List of Digits

=begin
-Mental Model-
A number is given. Verify that the number is positive, exit if it is not. split the larger number into smaller numbers
that are between 0 and 9. Output the list of numbers.

-Algorithm-
An integer is given.
Check if the number is greater than 0
  if the number is 0 or greater,
    split the larger number into an array with each individual number
    output the numbers
  if it is less than 0, 
    Let the user know the number has to be 0 or greater
=end

def digit_list(number)
  if number >= 0
    number.digits.reverse
  else
    "The number has to be 0 or greater."
  end
end

# LS Solutions

# def digit_list(number)
#   digits = []
#   loop do
#     number, remainder = number.divmod(10)
#     digits.unshift(remainder)
#     break if number == 0
#   end
#   digits
# end

# def digit_list(number)
#   number.to_s.chars.map(&:to_i)
# end

puts digit_list(12345) == [1, 2, 3, 4, 5]    
puts digit_list(7) == [7]                    
puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
puts digit_list(444) == [4, 4, 4]            