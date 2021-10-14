# Now I Know My ABCs

=begin
Input: String
Output: Boolean

Rules:
  write a method called `block_word?` that takes 1 argument
  given a collection of spelling blocks, where each block can only be used once,
      return a boolean stating whether the argument can be spelled based on the blocks.
  Case of the letters should not matter

Data Structure:
  string
  boolean
  array (nested????)
  #include???
  #select to return the nested array, then remove it from array???


---Algorithm---
DEF `block_word?` that takes 1 argument, `word)`
  SET `letter_block` to an array of nested arrays with each letter combo
  SET `block_word` to an empty string

  iterate over each element in letter block |blocks|
    if uppercase `word` includes the first element letter currently being iterated over,
      push the letter to `block_word`
      find the index of the `blocks``
      remove the element at that index
    if uppercase`word` includes the second element letter currently being iterated over,
      push the letter to `block_word`
      find the index of the `blocks``
      remove the element at that index
    
  compare `word` to `block_word`

=end

# ---LS Solution---
BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end


p block_word?('BATCH')  == true
p block_word?('BUTCH') == false
p block_word?('jest') == true