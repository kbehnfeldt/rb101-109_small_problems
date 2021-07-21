# Letter Counter (Part 2)

=begin
Input: A strind
Output: A hash of integers

Rules:
  Modify previous code
  Do not count non-letters as letters in the string
      (!, ., -, ', ...)
  
Data structure:
  String
  hash
  integer
  #delete
=end

# --My Solution--

def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.delete('^a-z A-Z').split.each do |word|
    counts[word.size] += 1
  end
  counts
end

# --LS Solution--

def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    clean_word = word.delete('^A-Za-z')
    counts[clean_word.size] += 1
  end
  counts
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}