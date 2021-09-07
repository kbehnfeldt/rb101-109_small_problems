=begin



=end
# ---My Solution 1---
# def swapcase(string)
#   string.split.map(&:swapcase).join(' ')
# end

# ---My Solution 2---
UPPERCASE = ("A".."Z")
LOWERCASE = ('a'..'z')

def swapcase(string)
  swapped_string = ""
  string.each_char do |character|
    if UPPERCASE.include?(character)
      swapped_string << character.downcase
    elsif LOWERCASE.include?(character)
      swapped_string << character.upcase
    else
      swapped_string << character
    end
  end
  p swapped_string
end

# ---LS Solution---
def swapcase(string)
  characters = string.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
  characters.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'