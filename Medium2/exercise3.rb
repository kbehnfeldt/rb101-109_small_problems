# Lettercase Percentage Ratio

=begin
Input: String
Output: hash

Rules:
  write a method called `letter_percentages` that takes 1 argument, `string`
  count the number of uppercase letters, lowercase letter, and characters that are not letters
    return a hash with the 3 values showing what the percentage of each value is.
  The provided input string will always have at least 1 non-letter character
    spaces count as neither

Data Structure:
  string
  floating point number
  hash
  array
  #each_chars/#chars
  case???

  to find % - total number of items / 100 * number in each catigory

---Algorithm---
SET `UPPERCASE` to the range ('A'..'Z').to_a
SET `LOWERCASE` to the range ('a'..'z').to_a

DEF `letter_percentages` (`string`)
  SET `percentage_hash` to a hash with keys :lowercase, :uppercase, :neither and all values set to 0.0
  SET `char_total` to 0.0

  iterate over each character in `string` |`char`|
    if char is uppercase, incerment :uppercase value by 1
    if char is lowercase, incerment :lowercase value by 1
    if neither, incerment:neither by 1
  
  REASSIGN `char_total` to the sum of values in `percentage_hash`

  iterate over each value in `percentage_hash`
    reassign each value to: (`char_total` / 100) * the current value

  return `percentage_array`
=end

# ---My Solution---
UPPERCASE = ('A'..'Z')
LOWERCASE = ('a'..'z')

def populate_values!(string)
  percentage_hash = {lowercase: 0.0, uppercase: 0.0, neither: 0.0}

  string.each_char do |char|
    case char
    when UPPERCASE then percentage_hash[:uppercase] += 1
    when LOWERCASE then percentage_hash[:lowercase] += 1
    else                percentage_hash[:neither] += 1
    end
  end

  percentage_hash
end

def convert_percentage!(hash, total_chars)
  hash.each do |key, value|
    hash[key] = ((100 / total_chars) * value)
  end
end

def letter_percentages(string)
  percentage_hash = populate_values!(string)
  char_total = percentage_hash.values.sum
  convert_percentage!(percentage_hash, char_total)
  percentage_hash
end

# ---LS Solution---
def letter_percentages(string)
  counts = {}
  percentages = {}
  characters = string.chars
  length = string.length

  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }

  calculate(percentages, counts, length)

  percentages
end

def calculate(percentages, counts, length)
  percentages[:lowercase] = (counts[:lowercase] / length.to_f) * 100
  percentages[:uppercase] = (counts[:uppercase] / length.to_f) * 100
  percentages[:neither] = (counts[:neither] / length.to_f) * 100
end



p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }