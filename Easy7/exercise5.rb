require 'pry'

# Staggered Caps (Part 1)
=begin

Rules:
  letter elements at odd index are capitalized
    letters at even index are lowercase
  non letters should not be changed, but count when switching between case
  return a new string

Data Structure:
  array
    indexing
  string
  #map/#each...

---Algorithm---
split string into an array with each character as a separate element
  SET `count` to 0
  iterate over each element
    if count is even, capitalize the current character
    if count is odd, downcase the current character
    add 1 to count
    repeat........




=end
# ---My Solution 1---
# def staggered_case(string)
#   char_array = string.chars
#   count = 0
#   char_array.map do |char|

#     if count.even?
#       count += 1
#       char.upcase
#     else
#       count += 1
#       char.downcase
#     end
    
#   end.join
# end

# ---My Solution 2---
# def staggered_case(string)
#   char_array = string.chars
#   staggered_array = []
#   count = 0

#   while count < char_array.size
#     if count.even?
#       staggered_array << char_array[count].upcase
#     else
#       staggered_array << char_array[count].downcase
#     end
#     count += 1
#   end
#   staggered_array.join
# end

# ---LS Solution---
# def staggered_case(string)
#   result = ''
#   need_upper = true
#   string.chars.each do |char|
#     if need_upper
#       result += char.upcase
#     else
#       result += char.downcase
#     end
#     need_upper = !need_upper
#   end
#   result
# end

# ---Further Exploration---
def staggered_case(string, need_upper=true)
  result = ''
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end

p staggered_case('I Love Launch School!') # == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS', false) # == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') # == 'IgNoRe 77 ThE 444 NuMbErS'