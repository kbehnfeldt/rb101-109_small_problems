# Get the middle charater

=begin
Input: String
Output: String

Rules:
  Write a method called center_of that takes 1 argument
  If the string has an odd number of charaters, return the middle charater
  if the string has an even number of charaters, return the 2 middle characters
  The string will always have at least one character


Data Structure:
  String
  Array
  #size
  element reference

  6 characters
    6/2 = 3
    3-1 = 2


---Algorithm---
DEF `center_of` that takes 1 argument, `string`
  get the size of `string`

  if the size of `string` is 1
    return `string`
  if the size of `string` is odd,
    divide the length of the string by 2
    return the character at that index
  if the size of `string` is even,
    divede the length of the string by 2 then subtract 1
    return the character and the following character at that index

=end

# ---My Solution---
def center_of(string)
  size = string.size

  if size == 1
    string
  elsif size.odd?
    idx = size / 2
    string[idx]
  elsif size.even?
    idx = (size / 2) - 1
    string[idx, 2]
  end

end

# ---LS Solution---
def center_of(string)
  center_index = string.size / 2
  if string.size.odd?
    string[center_index]
  else
    string[center_index - 1, 2]
  end
end


p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'