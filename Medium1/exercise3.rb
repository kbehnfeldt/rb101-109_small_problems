# Rotation (Part 3)

=begin
Input: Integer
Output: Integer

Rules:
  write a method called `max_rotation` that takes 1 argument
  rotate the most left digit in the number,
    then keep the first digit in place and rotate the rest of the number
    then keep the first 2 digits in place and rotate the rest of the number,
    then keep the first 3 digits in place .......
  Don't worry about leading 0's
  I can use the `rotate_rightmost_digits` method (and `rotate_array`)

Data Structure:
  Integer
  array
  #until???
  #size??

  _7_35291 => 3_5_2917 => 32_9_175 => 321_7_59 => 3215_9_7 => 321579

---Algorithm---
DEF `max_rotation` with 1 argument `number`
  SET `count` to 0

  until `count` is the same size as the number of characters in the string version of `number`,
    call `rotate_rightmost_digits` passing in `number` and the negative `count`
    incriment `count` by 1

=end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def max_rotation(number)
  count = number.to_s.size

  until count == 0
    number = rotate_rightmost_digits(number, count)
    count -= 1
  end

  number
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845