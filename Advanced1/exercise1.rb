# Madlids Revisited

text = File.read('madlibtext.txt')

def get_adjectives
  words = ''
  loop do
    puts "Input 2 adjectives:"
    words = gets.chomp
    break if words.split.size == 2
    puts "Thats not a valid number of entries."
  end
  words.split
end

def get_nouns
  words = ''
  loop do
    puts "Input 2 nouns:"
    words = gets.chomp
    break if words.split.size == 2
    puts "Thats not a valid number of entries."
  end
  words.split
end

def get_verbs
  words = ''
  loop do
    puts "Input 3 verbs"
    words = gets.chomp
    break if words.split.size == 3
    puts "Thats not a valid number of entries."
  end
  words.split
end

def get_adverbs
  words = ''
  loop do
    puts "Input 2 adverbs"
    words = gets.chomp
    break if words.split.size == 2
    puts "Thats not a valid number of entries."
  end
  words.split
end


adjectives = get_adjectives
nouns = get_nouns
verbs = get_verbs
adverbs = get_adverbs

text.gsub!('%{adjective}') { |word| adjectives.shift }
text.gsub!('%{noun}') { |word| nouns.shift }
text.gsub!('%{verb}') { |word| verbs.shift }
text.gsub!('%{adverb}') { |word| adverbs.shift }

puts text
