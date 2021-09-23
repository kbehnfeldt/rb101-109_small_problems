# All Substrings

=begin
Input: string
Output: array of strings

Rules:
  define a method, substrings, that takes one argument
  return all of the substring in the given string
    start with the first character, then first and second then 1, 2, 3 then....
    start with the second character, then the second and third then ...
    startwith third character then ...
  the list should be ordered by where the substring begins
    1 character, 2 characters, 3 characters...
  can use method from previous exercise

Data Structure:
  string
  array
  leading_substrings method

=end

# ---My Solution---
def substrings(string)
  result = []

  loop do
    0.upto(string.size - 1) do |index|
      result << string[0..index]
    end
    
    string = string.delete_prefix(string[0])
    break if string.size == 0
  end

  result
end

---LS Solution---
def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]