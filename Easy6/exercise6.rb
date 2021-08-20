# Combining Arrays

=begin
Input: Array
Output: Array

Rules:
  Define a method that takes 2 arguments
  combine the multiple arrays into one array
  There should not be any duplicated elements in the final array



=end

# ---My Solution 1---
# def merge(arr1, arr2)
#   (arr1 + arr2).uniq
# end

# ---My Solution 2---
def merge(arr1, arr2)
  (arr1.concat(arr2)).uniq
end

# ---LS Solution---
def merge(array_1, array_2)
  array_1 | array_2
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]