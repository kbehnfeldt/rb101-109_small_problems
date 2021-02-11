# Sum of Digits

=begin
Input:
  a positive integer
Output:
  The sum of the digits that make up that number (ex 23 is 2, 3 which added together = 5)

Rules:
  Input must be a positive integer.
  Cannot be a float or string

---ALGORITHM---
Define a method definition,   sum   that takes one argument,   number
Split the number into the indivitual numbers that make up the larger number
  store in an array named    individual_numbers
Add each number in    individual_numbers   together
return the result

=end

def sum(number)
 number.digits.sum
end

# LS Solution

def sum(number)
  sum = 0
  str_digits = number.to_s.chars

  str_digits.each do |str_digit|
    sum += str_digit.to_i
  end

  sum
end


puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
puts sum(0)