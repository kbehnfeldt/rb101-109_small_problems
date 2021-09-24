# Grocery List

=begin
Input: Array of sub-arrays withstrings and integers
Output: Array of strings

Rules:
  Write a method called `buy_fruit` that takes one argument, an array
  return an array with each friut listed the number of times stated in the input sub-array
  
Data Structure:
  array
  string
  integer
  #each
  #times???

---Algorithm---
DEF `buy_fruit` with one argument, `list`
  SET expanded_list to an empty array

  iterate over list
    using the block argument, `sub_array`,
      push the first element in the sub-array to `expanded_list` the number of times indicated by the second element

  return `expanded_list`
=end

# ---My Solution---
def buy_fruit(list)
  expanded_list = []

  list.each do |sub_array|
    sub_array[1].times { expanded_list << sub_array[0] }
  end

  expanded_list
end

# ---LS Solutions---
# 1
def buy_fruit(list)
  expanded_list = []

  list.each do |item|
    fruit, quantity = item[0], item[1]
    quantity.times { expanded_list << fruit }
  end

  expanded_list
end

# 2
def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]