# Merge Sorted Lists

=begin
Input: Array of Integers
Output: Array of Integers

Rules:
write a method called `merge` that takes 2 arguments
merge the 2 arguments into 1 sorted array
DO NOT sort the result array,
  build the result array one element at a time in the proper order
DO NOT mutate the original arrays

Data Structure:
Array
Integer
#<=>????
until
#size
#shift
#empty?

---Algorithm---
DEF `merge` with 2 arguments, `arr1` and `arr2`
  SET `arr1_dup` to a duplicated version of `arr1`
  SET `arr2_dup` to a duplicated version of `arr2`
  SET `result` to an empty array

  begin a loop that excutes until `result`.size == `arr1`.size + `arr2`.size
    if `arr1_dup` is empty, push `arr2_dup` to `result` and flatten
    if `arr2_dup` is empty, push `arr1_dup` to `result` and flatten
    if first element in `arr1_dup` <=> first element in `arr2_dup` returns 1
      `result` << `arr2_dup`[0].shift
    if first element in `arr1_dup` <=> first element in `arr2_dup` returns -1
      `result` << `arr1_dup`[0].shift
    if first element in `arr1_dup` <=> first element in `arr2_dup` returns 0
    `result` << `arr1_dup`[0].shift 
    
  return result

=end

# ---My Solution---
def merge(arr1, arr2)
  result = []
  arr1_dup = arr1.dup
  arr2_dup = arr2.dup

  until result.size == (arr1.size + arr2.size)
    if arr1_dup.empty?
      result << arr2_dup # could have used #concat and not needed #flatten!
      result.flatten!
    elsif arr2_dup.empty?
      result << arr1_dup
      result.flatten!
    elsif (arr1_dup[0] <=> arr2_dup[0]) == 1
      result << arr2_dup.shift
    elsif (arr1_dup[0] <=> arr2_dup[0]) == -1
      result << arr1_dup.shift
    elsif (arr1_dup[0] <=> arr2_dup[0]) == 0
      result << arr1_dup.shift
    end
  end

  result
end

# ---LS Solution---
def merge(array1, array2)
  index2 = 0
  result = []

  array1.each do |value|
    while index2 < array2.size && array2[index2] <= value
      result << array2[index2]
      index2 += 1
    end
    result << value
  end

  result.concat(array2[index2..-1])
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]