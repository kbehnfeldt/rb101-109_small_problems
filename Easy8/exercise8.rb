# Double Char (Part 2)

=begin
Input: String
Output: String

Rules:
  define a method called double_consonants that takes 1 argument
  return a string with every consonant doubled
    Only consonants should be doubled
  
---Algorithm----
DEF `double_consonants` (`string`)
  SET `result_string` to an empty string

  Iterate over each character in `string`
    if the character is a consonant, double it and push it to `result_string`
    else, push it to `result_string`

  return `result_string`

=end

# ---My Solution---
CONSONANTS = 'bcdfghjklmnpqrstvwxyz'

def double_consonants(string)
  result_string = ""

  string.each_char do |char|
    if CONSONANTS.include?(char.downcase)
      result_string << (char * 2)
    else
      result_string << char
    end
  end

  result_string
end

# ---LS Solution---
CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  result = ''
  string.each_char do |char|
    result << char
    result << char if CONSONANTS.include?(char.downcase)
  end
  result
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""