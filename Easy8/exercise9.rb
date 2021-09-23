#  Reverse the Digits In a Number

=begin
Input: Integer
Output: Integer

Rules:
  define a method called `reversed_number` that takes one argument
  return the given number in reverse order
  No numbers will have leading zeros
    If a number ends in 0(s), when reversed, the 0(s) will be removed

Data Structure:
  Integer
  Array
  #divmod
  #to_i
  #join
  
---Algorithm---
DEF `reversed_number` with one argement, `number`
  SET `num_array` to an empty array

  begin a loop that loops until `number` is 0
    call #divmod on `number` and store the return value in `number`, `remainder`
    push remainder to `num_array`
    repeat until conditional is met

  combine all of the elements in `num_array` into an integer
  retuan the integer

=end

# ---My Solution 1---
# def reversed_number(number)
#   number.digits.join.to_i
# end

# ---My Solution 2---

def reversed_number(number)
  num_array = Array.new

  until number == 0
    number, remainder = number.divmod(10)
    num_array << remainder
  end

  num_array.join.to_i
end

# ---LS Solution---

def reversed_number(number)
  string = number.to_s
  reversed_string = string.reverse
  reversed_string.to_i
end


p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1