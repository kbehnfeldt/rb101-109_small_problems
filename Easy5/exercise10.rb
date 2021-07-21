# Bannerizer

=begin 
Input: A string
Ouptut: A string

Rules:
  Output a string that fits inside of a box
  The box should expand to fit the string

Data Structure:
  heredoc
  string 
  string interpolation

---Algorithm---
define a method named `print_in_box` that takes one argument, `input_string`
set a Heredoc named `banner` with the appropriate formatting and characters as needed for the output
set a string named `dashes` with a value of '-' times the number of characters in `input_string`
Add dashes to the top and bottom of `banner`
add `input_string` to the middle of `banner`

return banner

=end

# --My Solution--

def print_in_box(input_string)
  dashes = ('-' * input_string.size)
  spaces = (' ' * input_string.size)

  puts "+-#{dashes}-+"
  puts "| #{spaces} |"
  puts "| #{input_string} |"
  puts "| #{spaces} |"
  puts "+-#{dashes}-+"

end 

# --LS Solution--


print_in_box('To boldly go where no one has gone before.')
print_in_box('')