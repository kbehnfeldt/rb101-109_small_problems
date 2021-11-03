# Password

=begin
The following code prompts the user to set their own password if they haven't done so already, 
and then prompts them to login with that password. 
However, the program throws an error. What is the problem and how can you fix it?

Once you get the program to run without error, does it behave as expected? 
Verify that you are able to log in with your new password.
=end

# OG program
# password = nil

# def set_password
#   puts 'What would you like your password to be?'
#   new_password = gets.chomp
#   password = new_password
# end

# def verify_password
#   puts '** Login **'
#   print 'Password: '
#   input = gets.chomp

#   if input == password
#     puts 'Welcome to the inside!'
#   else
#     puts 'Authentication failed.'
#   end
# end

# if !password
#   set_password
# end

# verify_password

# My Fix
password = nil

def set_password
  puts 'What would you like your password to be?'
  new_password = gets.chomp
  password = new_password
end

def verify_password(password) # added the parameter `password`
  puts '** Login **'
  print 'Password: '
  input = gets.chomp

  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if !password
  password = set_password # store the return value of `set_password` in the local variable `password`
end

verify_password(password) # pass in the local variable `password` as an argument to the `verify_password` method invocation.

=begin
The return value of `set_password` needed to be stored in a variable so it could be used throughout the program.
The `verify_password` method then needed to be able to access the `password` local variable in the method definition to compare 
`password` to the user input password.
=end
