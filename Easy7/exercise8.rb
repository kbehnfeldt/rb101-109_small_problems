# Multiply Lists

=begin
Input: 2 Arrays with Integers
Output: An Array with Integers

Rules:
  Taking the 2 input arrays, multiply the elements that share an index and 
      store the result in a new array.
  Arrays will always be the same length (same number of elements)
  Make a method called `multiply_list` that takes 2 arguments, `arr1` and `arr2`

Data Structure:
  Array
  Integer

---Algorithm---
DEF `multiply_list`, taking 2 arguments `arr1` and `arr2`
  SET `result_array` to an empty array
  set `count` to 0

  until the size of `arr1` is the same number as count
    take the first element of both arrays and multiply them (use `count` to access elements)
    push the result to `result_array`
    add 1 to `count`
    repeat.....

  return `result_array`

=end

# ---My Solution---
# def multiply_list(arr1, arr2)
#   result_array = Array.new
#   count = 0

#   until count == arr1.size
#     result_array << (arr1[count] * arr2[count])
#     count += 1
#   end
#   result_array
# end

# # ---LS Solution---
# def multiply_list(list_1, list_2)
#   products = []
#   list_1.each_with_index do |item, index|
#     products << item * list_2[index]
#   end
#   products
# end

# ---Further Exploration---
def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |sub_arr| sub_arr.reduce(:*) } 
end 

p multiply_list([3, 5, 7], [9, 10, 11]) # == [27, 50, 77]
