# Clean up the words

=begin
Input: A string
Output: A string

Rules:
  The method should be called `cleanup`
  All non-alphabetic characters should be replaced with spaces
  There should not me more than one space in a row

Data Structure:
  String
  #gsub

---Algorithm---
set an `alphabet` array

define a method, `cleanup` that takes one argument, `string`
Separate each character in `string`
iterate over each character
  if the character is in `alphabet`, add it to a new array
  if it is not in alphabet, replace it with a space



=end

# ---My Solution---

ALPHABET = ('a'..'z')

def cleanup(string)
  string_without_characters = ''

  string.each_char do |character|
    if ALPHABET.include?(character.downcase)
      string_without_characters << character
    else
      character = ' '
      string_without_characters << character
    end
  end

string_without_characters
end

# ---LS Solution---

ALPHABET = ('a'..'z').to_a

def cleanup(text)
  clean_chars = []

  text.chars.each do |char|
    if ALPHABET.include?(char)
      clean_chars << char
    else
      clean_chars << ' ' unless clean_chars.last == ' '
    end
  end

  clean_chars.join
end

# and

def cleanup(text)
  text.gsub(/[^a-z]/, ' ').squeeze(' ')
end

p cleanup("---what's my +*& line?") # == ' what s my line '