# Next Featured Number Higher than a Given Value

=begin
Input: Integer
Output: Integer or Error Message

Rules:
  make a method called `featured` that takes 1 argument
  the method should retrun the next featured number that is greater than the argument
    featured number - A number that is a multiple of 7, odd, and does not have any repeating digits.
  if the method cannot return a featured number, output  an error message.

Data Structure:
  Integer
  string
  array
  #digits
  #uniq
  #size

  featured number - num % 7 == 0 && num.odd? && num.digits == num.digits.uniq
  if num.digits.size > 10, print error and stop program.

---Algorithm---
DEF `featured` with 1 argument, `num`
  starting with num + 1, loop over the following conditionals and incerment num by 1 each time it returns false:
    num is a multiple of 7 (num % 7 == 0)
    num is odd (num.odd?)
    num does not have any repeating digits (num.digits == num.digits.uniq)

  if the number has more than 10 digits, the above conditional cannot be met,
    return an error message - 'There is no possible number that fulfills those requirements'

=end

# ---My Solution---
def featured(num)
  loop do 
    num += 1
    break if num % 7 == 0 && num.odd? && num.digits == num.digits.uniq 
    break if num.digits.size > 10
  end

  if num.digits.size > 10
    'There is no possible number that fulfills those requirements' 
  else
    num
  end
end

# ---LS Solution---
def featured(number)
  number += 1
  number += 1 until number.odd? && number % 7 == 0

  loop do
    number_chars = number.to_s.split('')
    return number if number_chars.uniq == number_chars
    number += 14
    break if number >= 9_876_543_210
  end

  'There is no possible number that fulfills those requirements.'
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements