# How old is Teddy?

=begin
Input:
  No input
Output:
  A string that includes a random number between 20 and 200.

Rules:
  Program needs to generate a ramdon number between 20 and 200
  The output is a string.

---Mental Model---
Write a method that returns a random number between 20 and 200
Write a method that returns a string with the random number from the above method.

---Algorithm---
Define a method   random_age  
  random_age   will return a random number from the Range class that is between 20 and 200
Define a method   age_string   that returns a string with the result of   random_age
  includedin the string
Invoke   age_string
=end

def get_name
  puts "What is your name?"
  user_name = gets.chomp
  if user_name.empty?
    return 'Teddy'
  else
    return user_name
  end
end

def random_age
  rand(20..200)
end

def age_string
  "#{get_name} is #{random_age} years old!"
end

puts age_string