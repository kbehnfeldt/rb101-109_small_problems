# Matching Parentheses?

=begin
Input: String
Output: Boolean

Rules: 
  Write a method called `balanced?` that takes 1 argument.
  the method returns true of all parentheses are balanced, otherwise it returns false
    balanced means the parentheses occure in matching pairs - ()    NOT )(

Data Structure:
  array
  string
  boolean
  #select????

---MM---
get all () into an array. return true of array starts with (, ends with ), and size is even

---Algorithm---
DEF `balanced?` with 1 argument, `string`
  iterate through each character in `string` and return '(' and ')' to a new array

  if new array starts with '(' , ends with ')' and the size is an even number, 
    return true
  if the array is empty retrun true
  else
    return false


=end

# ---My Solution---
def balanced?(string)
  parentheses = string.chars.select { |char| char =~ /[()]/ }

  if parentheses[0] == '(' && parentheses[-1] == ')' && parentheses.size.even?
    true
  elsif parentheses.empty?
    true
  else
    false
  end

end


# ---LS Solution---
def balanced?(string)
  parens = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0
  end

  parens.zero?
end


p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false