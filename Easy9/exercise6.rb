# How long are you?

=begin
Input: String
Output: Array

Rules:
  write a method named words_length that takes one argument
  return an array where each element is a single word and the number of characters in that word
  non-alphabetical characters should be included with the word they are connected to
  all words are separated by one space
  every non-space character is a word

Data Structure:
  string
  array
  #size
  #split
  #map

---Algorithm---
DEF `word_lengths` with 1 argument, `string`
  split the string by each word(#split)
  iterate over the split string
    count the number of characters in the current word
    return the word, a space, and the number of characters


=end

def word_lengths(string)
  string.split.map { |word| "#{word} #{word.length}" }
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []