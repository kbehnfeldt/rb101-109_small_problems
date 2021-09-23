# Palindromic Substrings

=begin
Input: string
Output: Array of strings

Rules:
  define a method called `palindromes` that takes 1 argument
  Palindromes are words that are spelled the same forward and backward.
    ada IS, AdA is 
    Ada is NOT due to capital A (A != a)
    single letter are NOT palindromes
  Check each substring and return any palindromes, including duplicates

Data structure:
  #each_with_object???
  array
  string
  #reverse????
  comparison

---Algorithm---
DEF `palindromes` with one argument, `string`
  iterate over the return value of `substrings`
    compare the current substring to a reversed version of itself
    if true AND the substring is > 1 character, return it

=end

def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end

# ---My Solution---
def palindromes(string)
  substrings(string).select do |str|
    str == str.reverse && str.size > 1 
  end
end

# ---LS Solution---
def palindromes(string)
  all_substrings = substrings(string)
  results = []
  all_substrings.each do |substring|
    results << substring if palindrome?(substring)
  end
  results
end

def palindrome?(string)
  string == string.reverse && string.size > 1
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]