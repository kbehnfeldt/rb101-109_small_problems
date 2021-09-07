# Combine two lists

=begin
Input: 2 Arrays
Output: an array

Rules:
  write a method called interleave
  take 2 arrays and combine them with the elements alternating from each array
    ex [1, 2, 3], ['a', 'b', 'c'] == [1, 'a', 2, 'b', 3, 'c']
  Return a new array
  assume the input array will always have at least 1 element
  assume the input arrays will always be the same length

Data Structure:
  Array
  #size???
  place holder array
  #loop

---Algorithm---
DEF `interleave` with 2 arguments, `arr1` and `arr2`
  SET `interleaved_array` to an empty array
  SET `counter` to 0

  make a loop that exits when the size of `interleaved_array` is equal to `arr1` * 2
    push the first element from `arr1` to `interleaved_array`
    push the first element from `arr2` to `interleaved_array`
    add 1 to counter
    repeate........

return `interleaved_array`

=end

# ---My Solution---
# def interleave(arr1, arr2)
#   interleaved_array = Array.new
#   counter = 0

#   until interleaved_array.size >= (arr1.size * 2)
#     interleaved_array << arr1[counter]
#     interleaved_array << arr2[counter]
#     counter += 1
#   end

#   interleaved_array
# end

# ---LS Solution---
# def interleave(array1, array2)
#   result = []
#   array1.each_with_index do |element, index|
#     p element
#     result << element << array2[index]
#   end
#   result
# end

# ---My Solution 2 (Further Exploration)
def interleave(arr1, arr2)
  result = (arr1.zip(arr2)).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']