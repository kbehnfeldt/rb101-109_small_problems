# HEY YOU!

# String#upcase! is a destructive method, so why does this code print HEY you instead of HEY YOU? 
# Modify the code so that it produces the expected output.

 # OG code
def shout_out_to(name)
  name.chars.each { |c| c.upcase! }

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'

# Fixed code
def shout_out_to(name)
  characters = name.chars
  characters.each { |c| c.upcase! }
  name = characters.join

  puts 'HEY ' + name
end

shout_out_to('you')

=begin
In the original program, the method call to #chars returns a new array. #each is then called on that new arrray.
Each element from the array is being passed into the block, and each character is being upcased in place. This is affecting the array created by 
#chars, not the characters in `name`. By assigning the return value of calling #chars on `name` to the local variable `characters`, each character
can be upcased, then the array of upcased characters can be joined back into a string and reassigned to `name`.

Or just do it the way LS did in the solution to make things really simple
=end

def shout_out_to(name)
  name.upcase!

  puts 'HEY ' + name
end

shout_out_to('you')

# or

def shout_out_to(name)
  puts 'HEY ' + name.upcase
end