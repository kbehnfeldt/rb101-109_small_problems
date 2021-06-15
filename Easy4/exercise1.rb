# Short long short

=begin
Input:
  a method that takes 2 strings
Output:
  one string that is a combination of the shorter string, the longer string, and the shorter string again.

Rules & Requirements:
  Need to determine which string is longer.
  Strings will be concatinated into one.
  Method will return the concatinated string


---Algorithm---
DEF   short_long_short (string1, string2)  that takes 2 arguments
  compare the length of the stings 
    if string1 is longer   string1.concat(string2, string1)   
    if string2 is longer   string2.concat(string1, string2)
  return the result.
=end

def short_long_short(string1, string2)
  if string1.length < string2.length
    string1.concat(string2, string1)
  else
    string2.concat(string1, string2)
  end
end



#---LS Solution---
def short_long_short(string1, string2)
  if string1.length > string2.length
    string2 + string1 + string2
  else
    string1 + string2 + string1
  end
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"