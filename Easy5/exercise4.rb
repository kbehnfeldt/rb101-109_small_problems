# Letter Swap

=begin
Input: A string
Output: A string

Rules:
  The first and last letter of each word should be swapped.
  The method should be called `swap`
  Every word will be atleast one character
  Every string will be atleast one character
  Strings will only contain letters and spaces

Data Structures:
  String
  Array
  #split
  #join
  #map, #each
  indexing (0, -1)
  reassignment ([] = '')

---Algorithm---
define a method named `swap`
split each word into it's own string and store in an array called `words`
Iterate over each element in `words`
  if the word is one letter, do nothing to it
  swap the first and last letter of each word
    store the last letter of the word in `last_letter`
    strose the first letter of the word in `first_letter`
    replace the first and last letter in the original word 
join the modified array back into a string
return the new string

=end

# ---My Solution---

def swap(string)
  swapped_words = []
  words = string.split

  words.each do |word|
    if word.chars.size == 1
      swapped_words << word
    else
      last_letter = word[-1]
      first_letter = word[0]
      word[0] = last_letter
      word[-1] = first_letter
      swapped_words << word
    end 
  end
  swapped_words.join(' ')
end


# -- LS Solution---

def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(words)
  result = words.split.map do |word|
    swap_first_last_characters(word)
  end
  result.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'