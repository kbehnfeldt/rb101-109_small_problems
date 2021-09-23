# Leading Substrings

=begin
Input: String
Output: Array of strings

Rules:
  write a method called `leading_substring` that takes one argument
  The method will return an array with the first element being the first character of the string, 
      the second element being the first and second characters .... up to the last element being the same
      characters as the original string.
  The elements should be ordered from shortest to longest

Data Structure:
  Array
  String

---Algorithm---
DEF `leading_substrings` (`string`)
  SET `current_string` to an empty string
  SET `substrings_array` to an empty array

  iterate over `string`
    concat the current string argument to `current_string`
    push the current value of `current_string` to `substrings_array`
    repeat.......

  return `substrings_array`

=end

# ---My Solution---
def leading_substrings(string)
  current_string = String.new
  substrings_array = Array.new

  string.each_char do |str|
    current_string += str
    substrings_array << current_string
  end

  substrings_array
end

# ---LS Solution---
def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']