# Lettercase Counter

=begin
Input: String
Output: Hash

Rules:
  given a string, count the number of characters that are uppercase, lowercase, and neither. Return a hash with those values
  define a method called letter_case_count that takes one argunemt
  the output hash will have 3 key-value pairs
  spaces count as 'neither'
  string can be empty

Data Structure:
  case statement???
  #upcase
  #downcase
  #split or #each_char

---Algorithm---
DEF `letter_case_count` that takes one argument `string`
    SET `result` to a hash with the needed keys and values set to 0
    iterate over each character in `string`
      if current character is uppercase, add 1 to `uppercase` hash value
      if current character is lowercase, add 1 to `lowercase` hash value
      else add 1 to `neither` hash value
    
return result

=end

# ---My Solution---
UPPERCASE_LETTERS = ('A'..'Z')
LOWERCASE_LETTERS = ('a'..'z')

def letter_case_count(string)
  result = {lowercase: 0, uppercase: 0, neither: 0}

  string.each_char do |char|
    if UPPERCASE_LETTERS.include?(char)    then result[:uppercase] += 1 
    elsif LOWERCASE_LETTERS.include?(char) then result[:lowercase] += 1
    else                                        result[:neither] += 1
    end
  end

  result
end

# ---LS Solution---
UPPERCASE_CHARS = ('A'..'Z').to_a
LOWERCASE_CHARS = ('a'..'z').to_a

def letter_case_count(string)
  counts = { lowercase: 0, uppercase: 0, neither: 0 }

  string.chars.each do |char|
    if UPPERCASE_CHARS.include?(char)
      counts[:uppercase] += 1
    elsif LOWERCASE_CHARS.include?(char)
      counts[:lowercase] += 1
    else
      counts[:neither] += 1
    end
  end

  counts
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }