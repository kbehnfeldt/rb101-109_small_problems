# Sum Square - Square Sum

=begin
Input: Integer
Output: Integer

Rules:
write a method, `sum_square_difference` that takes 1 argument
3 steps -
  add every number from 1 up argument together, then square the number
  square every number from 1 upto argument, then add them all together
  subtract the first number from the second number

Data Structure:
Integer
Algorithm
#upto????? or #times?????

Algorithm:
DEF `sum_square_difference` with 1 argument, `number`
  SET `sum_squared` to 0
  SET `squared_sum` to 0

  iterate from 1 upto `number` |`num`|
    `sum_squared` += `num`
    `squared_sum` += (`num`**2)

  square `sum_squared`
  subtract `sum_squared` from `squared_sum`
  return the above value

=end

# ---My Solution---
def sum_square_difference(number)
  sum_squared = 0
  squared_sum = 0

  1.upto(number) do |num|
    sum_squared += num
    squared_sum += (num**2)
  end

  (sum_squared**2) - squared_sum
end

# ---LS Solution---
def sum_square_difference(n)
  sum = 0
  sum_of_squares = 0

  1.upto(n) do |value|
    sum += value
    sum_of_squares += value**2
  end

  sum**2 - sum_of_squares
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150