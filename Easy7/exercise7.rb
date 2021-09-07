# Multiplicative Average

=begin
Input: Array of integers
Output: a string including the Float rounded to the thousandths

Rules:
  output a string including the float rounded to the thousandths.
  Input array will never be empty
  Multiply the given numbers and divide by the number of given numbers
  define a method called `show_multiplicative_average` that takes one argument `numbers`

Data structure:
  array
  integer
  float
  string
  #size
  * and /
  #round

---Algorithm---
DEF `show_multiplicative_average` that takes one argument, `numbers`
  multiply all of the integers in the array together
  divide the result by the number of elements in the array
  round the result to the nearest thousandth
  output theresult in a string


=end

# ---My Solution---
def show_multiplicative_average(numbers)
  result = ((numbers.reduce(:*)) / (numbers.size).to_f)
  puts "The result is #{format('%.3f', result)}"
end

# ---LS Solution---
# def show_multiplicative_average(numbers)
#   product = 1.to_f
#   numbers.each { |number| product *= number }
#   average = product / numbers.size
#   puts "The result is #{format('%.3f', average)}"
# end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667