# Arithmetic Integer

puts "Enter the first number:"
number_1 = gets.chomp.to_i

puts "Enter the second number:"
number_2 = gets.chomp.to_i

puts "#{number_1} + #{number_2} = #{number_1 + number_2}"
puts "#{number_1} - #{number_2} = #{number_1 - number_2}"
puts "#{number_1} * #{number_2} = #{number_1 * number_2}"
puts "#{number_1} / #{number_2} = #{number_1 / number_2}"
puts "#{number_1} % #{number_2} = #{number_1 % number_2}"
puts "#{number_1} ** #{number_2} = #{number_1**number_2}"

# ---LS Solution---

# def prompt(message)
#   puts "==> #{message}"
# end

# prompt("Enter the first number:")
# first_number = gets.chomp.to_i
# prompt("Enter the second number:")
# second_number = gets.chomp.to_i

# prompt("#{first_number} + #{second_number} = #{first_number + second_number}")
# prompt("#{first_number} - #{second_number} = #{first_number - second_number}")
# prompt("#{first_number} * #{second_number} = #{first_number * second_number}")
# prompt("#{first_number} / #{second_number} = #{first_number / second_number}")
# prompt("#{first_number} % #{second_number} = #{first_number % second_number}")
# prompt("#{first_number} ** #{second_number} = #{first_number**second_number}")