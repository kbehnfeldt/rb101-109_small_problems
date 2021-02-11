# Reverse It (Part 1)
=begin
-MM-
Define a method that takes ohe argument. Split the string a each space into a new string. 
Reverse the order of the words.  Output the result.

-Algorithm-
Define a method named   reverse_sentence   that takes one argunent
Split the string at each space and put each word in an array
Reverse the order of the array
Convert the array back into a string while keeping each word separated
Output the reversed string
=end

def reverse_sentence(string)
  array = string.split
  array.reverse.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence("It's k-bar") == "k-bar It's"