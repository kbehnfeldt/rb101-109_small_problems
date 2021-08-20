# Find the Duplicate

=begin
Input: An array
Output: Integer

Rules:
  Find the duplicate integer in the array.
    there will only be one duplicate in each array
  write a method that finds and returns the duplicate

Data Structure:
  Array
  Integer
  #sort???
  comparison

---Algorithm---
DEF `find_dup` that takes one argument `array`
SET `count` to 1
SET dup to nil

sort the array.
  iterate through the sorted array
  compare the current element to `array[count]
    if true, store the current element in `dup`
  add 1 to count

return `dup`  

=end

# ---My Solution---
def find_dup(array)
  dup = nil
  sorted_array = array.sort

  sorted_array.each_with_index do |ele, index|
    dup = ele if ele == sorted_array[index + 1]
  end 
  dup
end

# ---LS Solution---
def find_dup(array)
  array.find { |element| array.count(element) == 2 }
end



p find_dup([1, 5, 3, 1]) == 1
p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73