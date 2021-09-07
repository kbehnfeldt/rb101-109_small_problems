# The End Is Near But Not Here

# # ---My Solution---
# def penultimate(string)
#   string.split(' ')[-2]
# end

# # ---LS Solution---
# def penultimate(words)
#   words_array = words.split
#   words_array[-2]
# end


# p penultimate('last word') == 'last'
# p penultimate('Launch School is great!') == 'is'

def penultimate(string)
  words_array = string.split(' ')
  index = ((words_array.size) / 2)
  words_array[index]
end

p penultimate('Launch School is great!')
p penultimate('The cat sat.')
p penultimate('hey')