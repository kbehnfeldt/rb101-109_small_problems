# Word to Digit

=begin
Input: String
Output:String

Rule: 
  write a method called `words_to digits` that  takes 1 argument
  the method should convert any numbers that are spelled out to their numerical value, as a string.
  take into consideration punctuation with numeric words
  only do the numbers 0 through 9



Data Structure:
  array
  integer
  string
  #each
  #gsub!(/\b#{VARIABLE_NAME}\b/, REPLACEMENT_WORD)
  case statement


  '0' = 'zero', '1' = 'one' '2' = 'two'...

---Algorithm---
SET a constant variable hash,`NUMBERS` with a numerical word as the key and the matching numerical string as the value

DEF `word_to_digit` that takes 1 variable, `sentence`
  iterate over NUMBERS, passing in the key and value (#each)
    use #gsub! and pass in the current key as the pattern arg, and the current value as the replacement arg

  return `sentence`

=end

# ---My Solution---
NUMBERS = {'zero'=>'0', 'one'=>'1', 'two'=>'2', 'three'=>'3', 'four'=>'4',
           'five'=>'5', 'six'=>'6', 'seven'=>'7', 'eight'=>'8', 'nine'=>'9'
          }

def word_to_digit(sentence)
    NUMBERS.each do |key, value|
      sentence.gsub!(/\b#{key}\b/, value)
    end
    sentence
end

# ---LS Solution---
DIGIT_HASH = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}.freeze

def word_to_digit(words)
  DIGIT_HASH.keys.each do |word|
    words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
  end
  words
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'