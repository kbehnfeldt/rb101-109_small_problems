# Reverse It (Part 2)

=begin
-MM-
A string is given. Each word is checked to see if it has more than 4 characters. If it does, the characters in that 
word are reversed. If the word has less than 5 characters, it is not modified. The words are joined back together into 
one string. The string only has spaces if there is more than one word in it. The modified string is output.

-ALGORITHM-
Define a method named   reverse_words   that accepts one argument,   words
Split each substring in  words  and put them in   array
iterate through each string in   array  
  If a string has > 4 characters, reverse the characters in that string
  If a string has < 5 characters, do nothing
convert   array   back into a string
output the string
=end


def reverse_words(words)
  array = words.split.map do |word|
            if word.length > 4 then word.reverse
            else word
            end
  end
  array.join(' ')
end

# LS Solution
def reverse_words(string)
  words = []

  string.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(' ')
end

 puts reverse_words('Professional')          # => lanoisseforP
 puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
 puts reverse_words('Launch School')         # => hcnuaL loohcS