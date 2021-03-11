# Sum or product of consecutive integers

=begin
Input:
  An integer > 0
Output:
  Either - the sum of each number between 1 and the number from the user
  Or - the product of each number between 1 and the number from the user

Rules & Requirements:
  input number has to be greater than 0
    cannot be negative
  The user has to decide between 's' for sum or 'p' for product.
    no other option is valid
  The final output is a string

---Algorithm---
DEF   prompt   that takes one argument   message
  adds >> to the beginning of   message   and outputs the string

DEF  integer_validation
  GET input from user
    STORE in local variable named   integer_input
    validates the number is a number and greater than 0
    IF the input is not valid, prompts the user to input a valid number
    ELSE returns the   integer_input as an integer

DEF   sum_or_product
  GET input from user, 's' for sum or 'p' for product
    STORE in local variable named   s_or_p_input
  IF input is not s or p, prompt the user to try again
  ELSE return the result

DEF   compute_and_output
  STORE the result of   integer_validation   in the local variable   number
  STORE the result of   sum_or_product  in the local variable   user_answer
  IF   user_answer == p, multiply each number from 1 to   number   using #upto and #reduce
    STORE the result in   result
    OUTPUT a string with   result
  IF   user_answer == s, add each number from 1 to   number   using #upto and #reduce
    STORE the result in   result
    OUTPUT a string with   result
  
=end

def prompt(message)
  puts ">> #{message}"
end

def integer_validation
  integer_input = nil
  loop do
    prompt('Please enter an integer greater than 0:')
    integer_input = gets.chomp
    if integer_input.to_i.to_s == integer_input && integer_input.to_i > 0
      break
    else
      prompt('That is not a valid number')
    end
  end
  integer_input.to_i
end

def sum_or_product
  s_or_p_input = nil
  loop do
    prompt("Enter 's' to compute the sum, 'p' to compute the product")
    s_or_p_input = gets.chomp.downcase[0]
    if s_or_p_input.include?('s') || s_or_p_input.include?('p')
      break
    else
      prompt("That is not a valid input")
    end
  end
  s_or_p_input
end

def compute_and_output
  number_array = []
  number = integer_validation
  user_answer = sum_or_product
  if user_answer == 'p'
    1.upto(number) { |num| number_array << num }
    result = number_array.reduce(:*)
    puts "The product of the integers between 1 and #{number} is #{result}."
  else
    1.upto(number) { |num| number_array << num }
    result = number_array.reduce(:+)
    puts "The sum of the integers between 1 and #{number} is #{result}."
  end
end

compute_and_output

# ---LS Solution---

# def compute_sum(number)
#   total = 0
#   1.upto(number) { |value| total += value }
#   total
# end

# def compute_product(number)
#   total = 1
#   1.upto(number) { |value| total *= value }
#   total
# end

# puts ">> Please enter an integer greater than 0"
# number = gets.chomp.to_i

# puts ">> Enter 's' to compute the sum, 'p' to compute the product."
# operation = gets.chomp

# if operation == 's'
#   sum = compute_sum(number)
#   puts "The sum of the integers between 1 and #{number} is #{sum}."
# elsif operation == 'p'
#   product = compute_product(number)
#   puts "The product of the integers between 1 and #{number} is #{product}."
# else
#   puts "Oops. Unknown operation."
# end