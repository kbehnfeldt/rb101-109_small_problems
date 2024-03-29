# ---My Solution---
def word_cap(string)
  string.split.map { |word| word.capitalize }.join(' ')
end

# ---LS Solution---
def word_cap(words)
  words.split.map(&:capitalize).join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'