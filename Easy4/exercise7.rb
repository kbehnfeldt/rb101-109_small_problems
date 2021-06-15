# Convert a String to a Number

=begin
Input:
  a string of numbers
Output:
  The input numbers converted to integers
Rules & Requirements
  cannot use any conversion methods
  Assume all characters will be numeric

split the numbers into single strings
use a hash made up of string-integer key-value pairs to compare strings and integer numbers
get integers into array and combine the elements into one number


=end

string_integer_hash = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9
}

#---LS Solution---

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] } # creates an array of integers

  value = 0
  digits.each { |digit| value = 10 * value + digit } # See below
  value
end

# The actual computation of the numeric value of string is mechanical. 
# We take each digit and add it to 10 times the previous value, which yields the desired result in almost no time. 
# For example, if we have 4, 3, and 1, we compute the result as:

# 10 * 0 + 4 -> 4
# 10 * 4 + 3 -> 43
# 10 * 43 + 1 -> 431

string_to_integer('4321') == 4321
string_to_integer('570') == 570