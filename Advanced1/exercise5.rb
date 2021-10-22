# Rotating Matrices

=begin
Input: Array of arrays
Output: Array of arrays

Rules:
Write a method named `rotate90` with 1 argument
the method should rotate the argument array by 90 degrees

Data Structure:
Array
Integer
#each_with_index
#size
#push/#unshift
#times

[[1, 5, 8],
 [4, 7, 2],
 [3, 9, 6]] ==
[[3, 4, 1], 
 [9, 7, 5], 
 [6, 2, 8]]

[[3, 7, 4, 2],
 [5, 1, 0, 8]] ==
[[5, 3], 
 [1, 7], 
 [0, 4], 
 [8, 2]]

MM:


Algorithm:
DEF `rotate90` with 1 argument, `matrix`
  SET `new_matrix` to an empty array
  call #times on the size of the first array in `matrix`
    push a new array into `new_matrix` on each iteration

  iterate through each sub array in `matrix` (#each |sub_arr|)
    iterate through each element in `sub_arr` (#each_with_index |ele, idx|)
      push `ele` to the beginning of `new_matrix` at the current `idx` (new_matrix[idx].shift(ele))
  
  return `new_matrix`

=end

# ---My Solution---
def rotate90(matrix)
  new_matrix = []
  matrix[0].size.times { new_matrix << [] }

  matrix.each do |sub_arr|
    sub_arr.each_with_index do |ele, idx|
      new_matrix[idx].unshift(ele)
    end
  end

  new_matrix
end

# ---LS Solution---
def rotate90(matrix)
  result = []
  number_of_rows = matrix.size
  number_of_columns = matrix.first.size
  (0...number_of_columns).each do |column_index|
    new_row = (0...number_of_rows).map do |row_index|
      matrix[row_index][column_index]
    end
    result << new_row.reverse
  end
  result
end


matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]


new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2