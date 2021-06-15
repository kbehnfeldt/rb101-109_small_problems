# What Century is That?

=begin
Input:
  a year
Output:
  a method that returns a string of the century the input year is in.

Rules & Requirements:
  input is an integer
  Output is a string
    the string has to end with the appropriate suffix ('st', 'nd', 'th'...)
  The input year determines the output century.
  
---Mental Model---
If the current year is divisible by 100, divide it then add 1 to get the century
If the current year is < 100, return 1 for the century

If the century ends in 1, return 'st'
                       2, return 'nd'
                       3, return 'rd'
if century ends in 11, 12, 13 then return 'th'
else return 'th'  

---Algorithm---
DEF   return_century (year)
  if    year   < 100  return 1
  else   year   / 100 + 1

DEF   return_suffix (century)
  return 'th' if   century   #end_with? ('11', 12', '13')
    
  case (century)
  when   century #end_with? 1  return 'st'
  when                      2  return 'nd'
  when                      3  return 'rd'

DEF    century (year)
  century = return_century (year)
  suffix = return_suffix (century.to_s)
  return century.to_s + suffix

=end

def return_century(year) # fix
  if year < 100         then  1
  elsif year % 100 == 0 then  (year / 100)
  else                        (year / 100) + 1
  end
end

def return_suffix(century)
  return 'th' if century.end_with?('11', '12', '13') 
    
  if    century.end_with?('1') then 'st'
  elsif century.end_with?('2') then 'nd'
  elsif century.end_with?('3') then 'rd'
  else                              'th'
  end
end

def century(year)
  century = return_century(year)
  suffix = return_suffix(century.to_s)
  century.to_s + suffix
end


#---LS Solution---

# def century(year)
#   century = year / 100 + 1
#   century -= 1 if year % 100 == 0
#   century.to_s + century_suffix(century)
# end

# def century_suffix(century)
#   return 'th' if [11, 12, 13].include?(century % 100)
#   last_digit = century % 10

#   case last_digit
#   when 1 then 'st'
#   when 2 then 'nd'
#   when 3 then 'rd'
#   else 'th'
#   end
# end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'