# Longest Sentence

=begin
Input:string 
Output: string

Rules:
  The program should print the longest sentence in a .txt file AND print the number of words
    words are any group of characters not separated by a space, ., !, or ?
  
Data Structure:
  string
  array
  #sort_by?????
  #each_with_index??????
    compare current sentence to current longest sentence and store the index of the longest sentence.
  #count / #size

---Algorithm---
LOAD the .txt file and store in variable `text`
SET `longest_sentence_size` to 0
SET 'longest_sentence' to ''

split each sentence
  split at . ! and ?

iterate over each element in `sentences` |`sentence`|  (#each)
  split `sentence` at white space 
    count the number of words in the sentence
    if the current sentence has the most words, (compare sentence size to `longest_sentence_size`)
      reassign `longest_sentence_size` to `sentence`.size
      reassign `longest_sentence` to `sentence`
    else
      do nothing

OUTPUT - refrence `longest_sentence` and `longest_sentence`.size(may need to split the sentence, then count elements)
         to get the output sentence and number of words in the sentence.


=end


# ---My Solution---
text = File.read('Frankenstein.txt')

longest_sentence_size = 0
longest_sentence = ''

sentences = text.split(/\.|\?|!/)

sentences.each do |sentence|
  words = sentence.split(' ')

  if words.count > longest_sentence_size
    longest_sentence = sentence
    longest_sentence_size = words.count
  end

end

puts "The sentence:\n'#{longest_sentence}'\nis the longest sentence with #{longest_sentence_size} words."

# ---LS Solution---
text = File.read('sample_text.txt')
sentences = text.split(/\.|\?|!/)
largest_sentence = sentences.max_by { |sentence| sentence.split.size }
largest_sentence = largest_sentence.strip
number_of_words = largest_sentence.split.size

puts "#{largest_sentence}"
puts "Containing #{number_of_words} words"
