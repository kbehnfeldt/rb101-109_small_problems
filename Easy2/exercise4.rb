# When will I retire?

=begin
Input:
  Users current age
  At what age the user would like to retire
Output:
  Current year followed by the year the user will retire
  The number of years until the user will retire

Rules & Requirements
  Numbers must be whole numbers > 0
  Constant with the current year

=end

CURRENT_YEAR = Time.now.year

def age_validation
  age = nil
  loop do
    puts "What is your age:"
    age = gets.chomp
    if age.to_i.to_s == age && age.to_i > 0
      break 
    else 
      puts "That's not a valid age"
    end
  end
  age.to_i
end

def retirement_age_validation
  retirement_age = nil
  loop do
    puts "At what age would you like to retire:"
    retirement_age = gets.chomp
    if retirement_age.to_i.to_s == retirement_age && retirement_age.to_i > 0
      break 
    else 
      puts "That's not a valid age"
    end
  end
  retirement_age.to_i
end

years_to_work = (retirement_age_validation - age_validation)
retirement_year = (CURRENT_YEAR + years_to_work)

puts "It's #{CURRENT_YEAR}. You will retire in #{retirement_year}"
puts "You only have #{years_to_work} of work to go!"
