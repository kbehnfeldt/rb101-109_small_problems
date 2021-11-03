# Valid Series?

=begin
The valid_series? method checks whether a series of numbers is valid. For the purposes of this exercise, 
a valid series of numbers must contain exactly three odd numbers. Additionally, the numbers in the series must sum to 47.

Unfortunately, our last test case is not returning the expected result. Why is that?
=end

# OG Program
def valid_series?(nums)
  return false if nums.sum != 47

  odd_count = nums.count { |n| n.odd? }
  odd_count = 3 ? true : false
end

p valid_series?([5, 6, 2, 7, 3, 12, 4, 8])        # should return true
p valid_series?([1, 12, 2, 5, 16, 6])             # should return false
p valid_series?([28, 3, 4, 7, 9, 14])             # should return false
p valid_series?([20, 6, 9, 4, 2, 1, 2, 3])        # should return true
p valid_series?([10, 6, 19, 2, 6, 4])             # should return false

# My Fix
def valid_series?(nums)
  return false if nums.sum != 47

  odd_count = nums.count { |n| n.odd? }
  odd_count == 3 ? true : false # changed = to == (assignment to comparison) The turnary statement is also not necessary.
end

p valid_series?([5, 6, 2, 7, 3, 12, 4, 8])        # should return true
p valid_series?([1, 12, 2, 5, 16, 6])             # should return false
p valid_series?([28, 3, 4, 7, 9, 14])             # should return false
p valid_series?([20, 6, 9, 4, 2, 1, 2, 3])        # should return true
p valid_series?([10, 6, 19, 2, 6, 4])             # should return false

=begin
My Explination:
In the original program, odd_count was being reassigned to the return value of a turnary if statement. The turnary if statement is evaluating 
the integer 3, which is truthy, so the turnary statement always returned true even if there were not 3 odd numbers in the series. By comparing
the value of `odd_count` to the number 3, the turnary statement will only return true if `odd_count` evaluates to 3.

On line 5 of our original code, we mistakenly performed assignment rather than comparison.
== performs equality comparison and returns a Boolean, while = is used for variable assignment and returns the assigned value. 
In this case the assigned value was 3, which will always be evaluated as a truthy condition in our ternary operator. 
The method therefore returned true for all series of numbers that sum to 47, irrespective of how many odd numbers it contains.
=end
