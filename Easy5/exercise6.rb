# Letter Counter (Part 1)

=begin
Input: A string
Output: A hash of integers

Rules:
  Write a method called `word_sizes`
  Return a hash with a key that is the number of letters in a word and 
      the value is the number of words with that many letters.
  Words are separated by spaces
    *puncuation is part of the word
  The string can be empty

Data Structure:
  string
  array
  integer
  #split

---Algorithm---
Define a method called ` word_sizes` that takes one argument, `string`
set an empty hash, `occurances`
separate each word
iterate over each word
  count the number of characters in the current word
    If there is no key in `occurances` with that number of characters, 
        create the key and set the value to 1
    If there is a key with that number of characters, incriment the value 
        associated with the key by 1
  return `occurances`

=end

# --My Solution--

def word_sizes(string)
occurances = Hash.new
words_array = string.split

  words_array.each do |word|
    number_of_characters = word.size

    if occurances.has_key?(number_of_characters)
      occurances[number_of_characters] += 1
    else
      occurances[number_of_characters] = 1
    end
  end

  occurances
end

# --LS Solution--

def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    counts[word.size] += 1
  end
  counts
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}