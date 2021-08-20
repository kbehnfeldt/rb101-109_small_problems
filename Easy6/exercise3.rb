# Fibonacci Number Location By Length

=begin
Input: Integer
Output: Integer

Rules:
  the argument is the number of digits in the last iteration
  count the number of elements stored in the array that contains each sum
  starting with 1 and 1, add the digits, then add the sum to the prevoius digit
    ex - 1+1=2 1+2=3 2+3=5 3+5=8 ...
  Output index begins at 1 NOT 0 like normal indecies
  

Data Structure
  #reduce???
  Integer
  Array
    Indexing
  #size???
    will need to check the size of each number in the array


Mental Model - do the math until reaching a number that has the same number of digits as the argument, push each sum into an array, return size of array.

---Algorithm---
DEF `find_fibonacci_index_by_length` with one argument, `number_length`

UNTIL STATEMENT WITH LENGTH CHECK
SET array `sums` with two elements, 1 and 1
  Add the last 2 elements together
  store the result in `sums`
  check to see if the length of the last element in sums is the same length as `number_length`
  Repeat until the lengths are the same..............

When the length of the last element is the same length as the number `number_length`,
  return the index of the last element + 1


=end

# ---My Solution--- (cannot compute last example unless using Ruby Version 3+)
def find_fibonacci_index_by_length(number_length)
  sums = [1, 1]

  until sums[-1].digits.length == number_length
    sums << (sums[-2] + sums[-1])
  end

  sums.size
end

# ---LS Solution---
def find_fibonacci_index_by_length(number_digits)
  first = 1
  second = 1
  index = 2

  loop do
    index += 1
    fibonacci = first + second
    break if fibonacci.to_s.size >= number_digits

    first = second
    second = fibonacci
  end

  index
end




p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847