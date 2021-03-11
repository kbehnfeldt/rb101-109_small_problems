# Tip calculator

=begin
Input:
  Bill amount
  Tip percentage
Output:
  The tip amount
  The total bill including the tip

Rules & Requirements:
  The inputs must be numbers.
  The tip will have to be converded from a percentage to a float
  The final numbers will have to be floats.
  The final output will be a string.

---Mental Model---
get the bill amount from the user
get the tip percentage from the user
convert the tip percentage to a float 
  divide the float by 100
to get the tip amount, multiply the tip percentage by the bill total
output the tip amount
to get the bill total, add the tip amount to the bill total
output the bill total

---Algorithm---
DEF a method named   get_bill_amount   that asks the user to input the amount of the bill pre tip
  convert the input to a number
DEF a method named   get_tip_percent   that asks the user to input the percentage of tip they wish
    to give
DEF a method named   convert_tip   that converts the tip to float and divides by 100
DEF a method named   math_and_output  
  SET   tip_total =     (convert_tip   *   get_bill_amount) round to 2 decimal places
  SET   bill_total =   tip_total   +   get_bill_amount
  OUTPUT string with   tip_total   and   bill_total

=end

# ---Option 1---
# def get_bill_amount
#   puts "What is the bill:"
#   gets.chomp.to_f
# end

# def get_tip_percent
#   puts "What is the tip percentage:"
#   gets.chomp
# end

# def convert_tip
#   get_tip_percent.to_f / 100
# end

# def math_and_output
#   bill = get_bill_amount
#   tip = convert_tip
#   tip_total = (bill * tip).round(2)
#   bill_total = tip_total + bill
#   puts "The tip is $#{tip_total}\nThe total bill is $#{bill_total}"
# end

# math_and_output

# ---Option 2---
puts "What is the bill:"
bill = gets.chomp.to_f

puts "What is the tip percentage:"
tip = (gets.chomp.to_f / 100)

total_tip = (tip * bill).round(2)
total_bill = bill + total_tip

puts "The tip is $#{total_tip}\nThe total bill is $#{total_bill}"

# ---LS Solution---
# print 'What is the bill? '
# bill = gets.chomp
# bill = bill.to_f

# print 'What is the tip percentage? '
# percentage = gets.chomp
# percentage = percentage.to_f

# tip   = (bill * (percentage / 100)).round(2)
# total = (bill + tip).round(2)

# puts "The tip is $#{tip}"
# puts "The total is $#{total}"