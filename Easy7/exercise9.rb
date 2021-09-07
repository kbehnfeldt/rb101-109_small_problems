# Multiply All Pairs

=begin
Input: 2 Arrays of integers
Output: An array of integers

Rules:
  Each number in the first array should be multiplied by each number in the second array,
      then the numbers should be sorted fron low to high.
  Write a method that takes 2 arguments
  Can assume neither array will be empty

Data Structure:
  Array
  Integer
  #map????
  multiplication
  #size witn #times

---Algorithm---
DEF `multiply_all_pairs` with 2 parameters, `arr1` and `arr2`
  SET `pairs_array` to an empty array

  iterate over `arr1`
    count the number of elements in arr2 and call #times on the return value
      use the current number from #times to access the index of each element in arr2
      multiply the integer for the current iteration by the element at the curent index of arr2
        push the result to the empty array
 
  sort `pairs_array` from low to high
  return `pairs_array`

=end

# ---My Solution---
def multiply_all_pairs(arr1, arr2)
  pairs_array = Array.new

  arr1.each do |num|
    arr2.size.times do |index|
      pairs_array << (num * arr2[index])
    end
  end

  pairs_array.sort
end

# ---LS Solutions---
# def multiply_all_pairs(array_1, array_2)
#   products = []

#   array_1.each do |item_1|
#     array_2.each do |item_2|
#       products << item_1 * item_2
#     end
#   end

#   products.sort
# end

# ---and---
def multiply_all_pairs(array_1, array_2)
  array_1.product(array_2).map { |num1, num2| num1 * num2 }.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]