# Rotation (Part 1)

=begin
Input: Array
Output: Array

Rules:
  Write a method called `rotate_array` that takes 1 argument
  move the first element to the end of the array
  DO NOT use #rotate or #rotate!
  DO NOT modify the original array

Data Structure:
  Array
  #dup
  #shift
  #<<

---Algorithm---
DEF `rotate_array` with 1 argument, `og_array`
  create a copy of `og_array` called `dup_array`
  remove the first element (#shift)
    place said element at the end of `dup_array` (#<<)

  return `dup_array`

=end

# ---My Solution---
def rotate_array(og_array)
  dup_array = og_array.dup
  dup_array << dup_array.shift
end

# ---LS Solution---
def rotate_array(array)
  array[1..-1] + [array[0]]
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true