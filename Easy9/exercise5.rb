# Uppercase Check

=begin
Input: String
Output: Boolean (true or false)

Rules:
  write a method called uppercase? that takes 1 argument
  return true if all non-alphabetic characters are uppercase
  return false if any non-alphabetic characters are lowercase
  Ignore non-alphabetic characters
  empty string should return true


=end

# ---My Solution---
def uppercase?(string)
  string == string.upcase ? true : false
end

# ---LS Solution---
def uppercase?(string)
  string == string.upcase
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true