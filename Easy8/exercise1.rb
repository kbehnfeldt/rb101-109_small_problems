# Sum of Sums

=begin
Input: Array of integers
Output: Integer

Rules:
  Write a method named sum_of_sums that takes one argument
  The array argument will contain at least one integer
  All elements are integers
  take the first element of the array, then take the first and second and add them together,
      then the first, second, and third and add them .... up to the length of the array
    return the sum of all of the sums.

Data Structure:
  Array
  Integer
  Addition
  while
  #upto
  #sum
  
---Algorithm---
DEF `sum_of_sums` (`array`)
  SET `sums_array` to an empty array
  SET `count` to 0
  
  begin a loop that breaks when count is equal to the size of `array`
    using #upto from 0 to `count`
      add each integer to `sum` using the variable from count to access the integers in `array` via their index
    add one to `count`

  add all of the elements in `sum`
  return sum

=end

# ---My Solution---
def sum_of_sums(array)
  sums_array = Array.new
  count = 0

  until count == array.size
    sum = 0

    0.upto(count) do |index| 
      sum += array[index] 
    end

    sums_array << sum
    count += 1
  end 

  sums_array.sum
end

# ---LS Solutions---
def sum_of_sums(numbers)
  sum_total = 0
  accumulator = 0

  numbers.each do |num|
    accumulator += num
    sum_total += accumulator
  end

  sum_total
end

# ---and---
def sum_of_sums(numbers)
  sum_total = 0
  accumulator = 0

  numbers.each do |num|
    accumulator += num
    sum_total += accumulator
  end

  sum_total
end

p sum_of_sums([3, 5, 2]) == 21
p sum_of_sums([1, 5, 7, 3]) == 36
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35