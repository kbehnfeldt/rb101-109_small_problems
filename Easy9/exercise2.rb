# Double Doubles

=begin
Input: Integer
Output: Integer

Rules:
  if you chop the number down the middle, it should be the same on both sides.
    if it's not, double it
  return a doubled number or the original number

Data Structure:
  To split number:
    number.to_s.size/2 then add that many 0's for divmod argument (result.times add multiply by 10 that many times) - divisor
    number.divmod(0000) then compare both elements in array.
  array
  integer
  string
  #divmod
  multiplication

---Algorithm---
DEF `divisor` that takes one argument, `num`
  SET `divisor` to 1
  convert the number to a string and find the size of the string
  divide the size by 2
    using that number, multiply `divisor` by 10 that many times (#times)

DEF `twice` that takes one argument, `num`
  num1, num2 = num.divmod(divisor(num)) 
  if num1 and num2 are the same, return `num`
  if they are different, multiply `num` by 2 and return that
  
=end

# ---My Solution---
def divisor(num)
  divisor = 1
  ((num.to_s.size) / 2).times { divisor *= 10 }
  divisor
end

def twice(num)
  first_half, second_half = num.divmod(divisor(num))

  if first_half == second_half
    num
  else
    (num * 2)
  end
   
end

# ---LS Solution---
def twice(number)
  string_number = number.to_s
  center = string_number.size / 2
  left_side = center.zero? ? '' : string_number[0..center - 1]
  right_side = string_number[center..-1]

  return number if left_side == right_side
  return number * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10