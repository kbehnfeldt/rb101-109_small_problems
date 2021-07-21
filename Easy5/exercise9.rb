# ddaaiillyy ddoouubbllee

=begin
Input: A string
Output A string

Rules:
  the definition will be named `crunch`
  All characters that are the same as the previous charater will be removed
  CANNOT use #squeeze(!)

Data structure:
  string
  Array?
  #each_char
  ==

---Algorithm---
define a method named `crunch` that takes one argument, `original_string`
set an empty string named `crunch_string`

iterate over each character in `original_string`
  If the current character is the same as the last character in `crunch_string`, 
        do not add that character to `crunch_string`
  otherwise, add that character to `crunch_string`

return `crunch_string`

=end

# --My Solution--

def crunch(original_string)
  crunch_string = String.new

  original_string.each_char do |char|
    crunch_string << char unless char == crunch_string[-1]
  end

  crunch_string
end


# --LS Solution--

def crunch(text)
  index = 0
  crunch_text = ''
  while index <= text.length - 1
    crunch_text << text[index] unless text[index] == text[index + 1]
    index += 1
  end
  crunch_text
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''