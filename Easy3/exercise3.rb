# Counting the number of characters

=begin
Input:
  one or more words
Output:
  The number of characters in the word or words

Rules & Requirements
  Spaces should not be counted
  Symbols should be counted

---Algorithm---
DEF   get_input
  prompt the user to enter a word or words
  return the user input

DEF   count_characters (words)
  take   words   and convert it to an array of characters with #chars,
    remove the spaces with #delete, and count the remaining characters with #length
  STORE the result in   number_of_characters
  return the number_of_characters

DEF   output_result
  STORE the return value of   get_input   in variable   user_input
  STORE the return value of   count_characters (user_input)   in variable   character_count
  OUTPUT "there are #{character_count} characters in #{user_input}
  
INVOKE   output_result

=end

def get_input
  puts ">> Please write one or multiple words:"
  gets.chomp
end

def count_characters(words)
  words.delete(' ').length
end

def output_result
  user_input = get_input
  character_count = count_characters(user_input)
  puts ">> There are #{character_count} characters in \"#{user_input}\"."
end

output_result

# ---LS Solution---

# print 'Please write word or multiple words: '
# input = gets.chomp
# number_of_characters = input.delete(' ').size
# puts "There are #{number_of_characters} characters in \"#{input}\"."