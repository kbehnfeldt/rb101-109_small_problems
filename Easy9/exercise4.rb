# Counting up

=begin
Input: Integer
Output: Array

Rules:
  write a method
  return an array with every number from 1 up to the given number


=end

# ---MY Solutions---
# def sequence(num)
#   arr = []
#   1.upto(num) { |num| arr << num }
#   arr
# end

# def sequence(num)
#   arr = []
#   num.times { |num| arr << (num + 1) }
#   arr
# end

# ---LS Solution---
def sequence(number)
  (1..number).to_a
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]