# Double Char (Part 1)

=begin
Input: string
Output: string

Rules:
  define a method called `repeater` that takes 1 argument
  each character in the given string should be doubled

---Algorithm---
SET `repeater_string` to an empty string

DEF `repeater` with 1 argument, `string`
  iterate over each character in `string`
    multiply that character by 2 
    push the return value to `repeater_string`
  
  return `repeater_string`


=end

# ---My Solution---
def repeater(string)
  repeater_string = ''

  string.each_char do |char|
    repeater_string << (char * 2)
  end

  repeater_string
end

# ---LS Solution---
def repeater(string)
  result = ''
  string.each_char do |char|
    result << char << char
  end
  result
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''