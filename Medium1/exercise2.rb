# Rotatin (Part 2)

=begin
Input: 2 integers
Output: 1 Integer

Rules:
  Write a method, `rotate_rightmost_digits` that takes 2 arguments
  take the last number of elements based on the 2nd argument, and rotate them in the first argument
  Rotating 1 results in the same number being returned
  can use `rotate_array` from previous exercise
  can assume the second argument is always positive

Data Structure:
  Integer
  Array
  #digits & #reverse???
  #join???
  #rotate_array
  #pop(num2)

  [7, 3, 5, 2, 9, 1]    3
  [-num2..-1] => numbers to be rotated

---Algorithm---
DEF `rotate_rightmost_digits` with 2 arguments, `num1`, `num2`
  split `num1` into an array with each single number as an individual element (then #reverse if using #digits)
    strore the return value in `num_array`
  return a range of `num_array` from the negative value of `num2` to the last element of `num_array`
    call `rotate_array` and pass in the return value above
  remove the last `num2` elements from `num_array`
  append the return value of `rotate_array`
  join `num_array` and convert it to an integer
  return the integer
  
=end

def rotate_array(array)
  array[1..-1] + [array[0]]
end

# ---MY Solution---
def rotate_rightmost_digits(num1, num2)
  num_array = num1.digits.reverse
  rotate_numbers = num_array[-num2..-1]
  num_array.pop(num2)
  num_array << rotate_array(rotate_numbers)
  num_array.join.to_i
end

# ---LS Solution---
def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917