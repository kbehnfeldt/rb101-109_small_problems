# What's my Bonus?

=begin
Input:
  A positive integer and a boolean
Output:
  If the boolean is true, the output will be half the value of the integer argument
  If the boolean is false, the output will be 0

Rules/thoughts:
  The method definition takes 2 argunents.

=end

def calculate_bonus(number, boolean)
  boolean ? number / 2 : 0
end



puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000