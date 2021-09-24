# Sequence Count

=begin
Input: 2 Integers
Output: Array of Integers

Rules:
  write a method, `sequence` that takes 2 arguments
    the first argument is the number of integers that will be returned in the output array
    the second argument is the starting integer
  starting from the second argument (starting integer), populate an array with multiples of the strting integer
      until the number of integers is equal to the first argument(count)
          ex - sequence(3, 2) == [2, 4, 6]
  Sarting number can be any number(including negative)
  Count will always be 0 or greater
    If count == 0, return an empty array *****
  Negative numbers will keep getting smaller.  ex - [-7, -14, -21, -28]

Data Structure:
  Array
  Integer
  #reduce????
  #times????
  empty storage array

---Algorithm---
DEF `sequence` with 2 arguments, `count`, and `start_num`
  SET `result_array`
  SET `num` to 0
    `count` number of times add `start_num` to `num`
    push the result to `result_array` each time the value of `num` changes

  return `result_array`

=end

#---My Solution---
def sequence(count, start_num)
  result_array = []
  num = 0

  count.times do |_|
    num += start_num
    result_array << num
  end

  result_array
end

# ---LS Solutions---
# 1
def sequence(count, first)
  sequence = []
  number = first

  count.times do
    sequence << number
    number += first
  end

  sequence
end

# 2
def sequence(count, first)
  (1..count).map { |value| value * first }
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []