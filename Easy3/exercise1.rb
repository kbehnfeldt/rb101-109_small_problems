# Searching 101

require 'pry'

=begin
Input:
  6 numbers from user
Output:
  A message telling the user whether or not the 6th number is the same as any of the other 5.

Rules & Requirements:
  the user is asked 6 times for a number
  numbers get stored in an array
  output has to be integers
    convert array to integers  (map &:to_i)???
  One output if the last number is included in the 5, another output if it is not

---Algorithm---
SET an empty array   first_five_numbers 
SET empty string   last_number
SET array   count = %w(1st..5th)

DEF   get_first_five_numbers (first_five_numbers, count)
  5 #times ask the user to enter a  number (gets.chomp.to_i)
    #{count #shift} for 1st, 2nd...
  append each number to    first_five_numbers   with << operator

DEF   get_last_number (last_number)
  ask the user to input the last number
  STORE the result in   last_number   with  << operator

DEF   last_number_included? (first_five_numbers, last_number)
  if get_first_five_numbers   #includes   get_last_number
    output   #{last_number}   is included in    #{first_five_numbers}
  else 
    output   #{last_number}   is not included in    #{first_five_numbers}

=end

# variables
count_numbers = %w(1st 2nd 3rd 4th 5th)

# methods
def valid_input?(input)
  if input.to_i.to_s == input
    true
  else
    puts "Thats not a valid number. Try again."
  end
end

def get_first_five_numbers(count)
  answer = ''
  choice_array = []
  5.times do
    puts "Enter the #{count.shift} number:"
    loop do
      answer = gets.chomp
      break if valid_input?(answer)
    end
    choice_array << answer.to_i
  end
  choice_array
end

def get_last_number
  answer = ''
  puts "Enter the last number:"
  loop do
    answer = gets.chomp
    break if valid_input?(answer)
  end
  last_number = answer.to_i
end

def print_result(count)
  first_five_numbers = get_first_five_numbers(count)
  last_number = get_last_number
  if first_five_numbers.include?(last_number)
    puts "The number #{last_number} appears in #{first_five_numbers}."
  else
    puts "The number #{last_number} does not appear in #{first_five_numbers}."
  end
end

print_result(count_numbers)


# ---LS Solution---

# numbers = []

# puts "Enter the 1st number:"
# numbers << gets.chomp.to_i
# puts "Enter the 2nd number:"
# numbers << gets.chomp.to_i
# puts "Enter the 3rd number:"
# numbers << gets.chomp.to_i
# puts "Enter the 4th number:"
# numbers << gets.chomp.to_i
# puts "Enter the 5th number:"
# numbers << gets.chomp.to_i
# puts "Enter the last number:"
# last_number = gets.chomp.to_i

# if numbers.include? last_number
#   puts "The number #{last_number} appears in #{numbers}."
# else
#   puts "The number #{last_number} does not appear in #{numbers}."
# end