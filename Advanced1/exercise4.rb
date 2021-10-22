# Transpose MxN

=begin
Input: Array
Output: Array

Rules:
rewrite `transpose` to it will work with matrixes that are not square (even number of rows and columns)
Method should work with any matrix that is at least 1 row and 1 column.

Data Structure:
Array
#each???
#times????

[[1, 2, 3, 4]] =
[[1], 
 [2], 
 [3], 
 [4]]

[[1], 
 [2], 
 [3], 
 [4]] = 
[[1, 2, 3, 4]]

[[1, 2, 3, 4, 5], 
 [4, 3, 2, 1, 0], 
 [3, 7, 8, 6, 2]] = 
[[1, 4, 3], 
 [2, 3, 7], 
 [3, 2, 8], 
 [4, 1, 6], 
 [5, 0, 2]]

[[1]] = [[1]]

=end

# ---My Solution---
def transpose(array)
  new_matrix = []
  array[0].size.times { new_matrix << [] }

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
  number_of_rows = matrix.size
  number_of_columns = matrix.first.size
  (0...number_of_columns).each do |column_index|
    new_row = (0...number_of_rows).map { |row_index| matrix[row_index][column_index] }
    result << new_row
  end
  result
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]