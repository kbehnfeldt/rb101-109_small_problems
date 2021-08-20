# Reversed Arrays (Part 2)
=begin
Input: Array
Output: A new array

Rules:
  The method must return a NEW ARRAY
  CANNOT use #reverse or the method from Reversed Arrays (Part 1)
  The order of elements should be reversed, not the elements themselves
  The new array should have all of the same elements as the original

Data Structure:
  Array
      a b e d c
      c d e b a
  #each

---Algorithm---
DEF `reverse` that  takes one argument, `input_array`
SET `reversed_array` to an empty array

iterate over input_array
  take the last element from `input_array` and push it to `reversed_array`
  
return `reversed_array`

=end

# ---My Solution 1---
# def reverse(input_array)
#   reversed_array = Array.new

#   input_array.each do |ele|
#     reversed_array.unshift(ele)
#   end

#   reversed_array
# end

# ---My Solution 2---
# def reverse(input_array)
#   input_array.each_with_object([]) do |ele, arr|
#     arr.prepend(ele)
#   end
# end

# ---My Solution 3---
def reverse(input_array)
  input_array.reduce([]) do |arr, ele|
    arr.prepend(ele)
  end

end


p reverse([1,2,3,4]) # == [4,3,2,1]          # => true
# p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
# p reverse(['abc']) == ['abc']              # => true
# p reverse([]) == []                        # => true

# list = [1, 3, 2]                      # => [1, 3, 2]
# new_list = reverse(list)              # => [2, 3, 1]
# p list.object_id != new_list.object_id  # => true
# p list == [1, 3, 2]                     # => true
# p new_list == [2, 3, 1]                 # => true