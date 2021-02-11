# Array Average

=begin
Input:
  An array of integers
Output:
  The average of the integers output as an integer.
  (Average is the sum of all of the integers / the number of integers)

Rules:
  Array will never be empty
  The integers will always be positive
  The result has to be an integer

---ALGORITHM---
Define a method named   average   with one parameter,   input_array   
add the integers in   input_array   together and store the result in   sum_of_array
check the length of   input_array   and store the variable in   array_length
create a variable   result  that stores    sum_of_array / array length
return   result

=end

def average(input_array)
  sum_of_array = input_array.sum
  array_length = input_array.length

  result = sum_of_array / array_length
end


# LS Solution

def average(numbers)
  sum = numbers.reduce { |sum, number| sum + number }
  sum / numbers.count
end



puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40