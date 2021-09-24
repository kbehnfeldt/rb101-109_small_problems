# Group Anagrams

=begin
Input: Array of strings
Output: Array of strings

Rules:
  write a program that prints groups of words that are anagrams
    (anagrams are groups of words with the same letters, but in a different order)
  
Data Structure:
  array
  string
  #sort???
  hash

  Output should look like:
    # => ["demo", "dome", "mode"]
    #    ["neon", "none"]
    #    (etc)

---Algorithm---
SET `anagram_hash` to an empty hash

iterate over each word in `words`
  split the current word into an array with each character as an element.
  sort the array alphabetically and join it back into a string

  if `anagram_hash` has the current sorted word as a key, 
    add the original word to the value, which will be an array
  if it doesn't have the current sorted word as a key,
    create a key with the sorted word, and add the original word in an array as the value

  Once `annagram_hash` is populated,
    print the value(array of strings) associated with each key


=end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

anagram_hash = {}

words.each do |word|
  sorted_word = word.chars.sort.join

  if anagram_hash.key?(sorted_word)
    anagram_hash[sorted_word].push(word)
  else
    anagram_hash[sorted_word] = [word]
  end

end

anagram_hash.each_value { |value| p value }

