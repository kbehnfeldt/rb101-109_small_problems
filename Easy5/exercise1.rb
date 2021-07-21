# ASCII String Value

=begin
Input: A string
Output: An integer

Rules:
  Must be a method definition valled ascii_value
  Output is a sum of the ASCII value of each character in the string

Data Structure:
  String
  Integer
  Array
  String#split
  String#ord
  Array of characters from the sting---['F', 'o', 'u'...]
   
---Algorithm---
Define a method definition `ascii_value` that takes one argument, `string`
  Set an empty variable `value` equal to the integer 0
  Take 'string' and separate each character. 
    Store the result in `characters`
  Iterate over `characters`
    find the ASCII value of the current character
      add the value to `value`
  return value


=end

def ascii_value(string)
  value = 0
  characters = string.chars

  characters.each do |character|
    value += character.ord
  end

  value
end

# ---LS Solution---

# def ascii_value(string)
#   sum = 0
#   string.each_char { |char| sum += char.ord }
#   sum
# end


p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0