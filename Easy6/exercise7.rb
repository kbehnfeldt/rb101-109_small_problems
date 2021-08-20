# Halvsies

=begin
Input: Array
Output: 2 nested arrays

Rules:
  If there is an odd number of elements in the array, the first sub array will have the middle element
  The order of the elements should not change
  If only 1 element in input array, 2 sub arrays should still be output - one empty
  If input array is empty, 2 empty sub arrays should be output

Data Structure:
  Arrays
  More arrays
  #size????
  #compact???

---Algorithm---
DEF `halvsies` that takes 1 argument, `starting_array`

SET `nested_array` to [[],[]] (empty nested array)

iterate over `starting_array`
  push 



  return `nested_array`

=end

# ---My Solution---
def halvsies(starting_array)
  nested_array = [[],[]]
  count = 0

  size1 = starting_array.size / 2
  size1 += 1 if starting_array.size.odd?
  size2 = starting_array.size / 2
  
  size1.times do |_|
    nested_array[0] << starting_array[count]
    count += 1
  end

  size2.times do |_|
    nested_array[1] << starting_array[count]
    count += 1
  end

  nested_array
end

# ---LS Solution---
def halvsies(array)
  middle = (array.size / 2.0).ceil
  first_half = array.slice(0, middle)
  second_half = array.slice(middle, array.size - middle)
  [first_half, second_half]
end


p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]