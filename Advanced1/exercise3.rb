# Transpose 3x3

=begin
Input: Nested Array
Output: A new Nested Array

Rules:
Write a method called `transpose` that takes 1 argument
The method should transpose a 3x3 matrix 
    A matrix is an array containing 'n' number of arrays that contain 'n' number of elements 
      (it makes a square if each array is listed on it's own line)
The first row should become the first column, second row becomes second column .......
DO NOT modify the original array

Data Structure:
Array
Integer
#dup????

MM:
duplicate matrix. iterate over each sub array. #shift the first element from each sub array and push it to the first
    sub array in the new empty. repeat for second new sub array and third.

Algorithm:
DEF `transpose` with 1 argument `array`
  SET `new_matrix` to an array with 3 empty sub arrays

  iterate over each sub array
    iterate over the sub arrays (each_with_index) |ele, idx|
      remove and return the first element from the first sub array
        push that element to  `new_matrix`[idx]
        repeat 3 times

  return `new_matrix`

=end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

# ---Mys Solution---
def transpose(array)
  new_matrix = []
  array.size.times { new_matrix << []}

  array.each do |sub_arr|
    sub_arr.each_with_index do |ele, idx|
      new_matrix[idx].push(ele)
    end
  end

  new_matrix
end

# ---LS Solution---
def transpose(matrix)
  result = []
  (0..2).each do |column_index|
    new_row = (0..2).map { |row_index| matrix[row_index][column_index] }
    result << new_row
  end
  result
end

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]