# Multiples of 3 and 5

=begin
Input:
  a number greater than 0
Output: 
  Every unique number that is a multiple of 3 and 5 between 1 and the given number added together

Rules & Requirements
  The input number will be greater than 0
  No multiples will be repeated
  Everything should be integers
  
---Mental Model---
Starting with 1, see what numbers are evenly divisible by 3 and 5 upto the given number.
store the numbers that are evenly divisible
  If there are duplicates of any numbers, remove them so there is only one of each number
add all of the stored numbers together and return the result

---Algorithm---
DEF   multisum (number)
  SET an empty array   multiples_array
  SET a range from 1 to   number
    call #each on   number   and pass in the variable   num
      if   num   is evenly divisible by 3 or 5, store   num in   multiples_array
  invoke #uniq on   multiples_array   to remove any repeated numbers
  invoke #reduce(:+) on multiples_array to get the sum of all of the numbers in   multiples_array

=end

def multisum(number)
  multiples_array = Array.new

  (1..number).each do |num|
    multiples_array.push(num) if (num % 3 == 0) || (num % 5 == 0) 
  end
  p multiples_array
  multiples_array.uniq.reduce(:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168