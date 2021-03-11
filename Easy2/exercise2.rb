# How big is the room?

=begin
Input:
  Ask user - 
    Length of a room in METERS
    Width of a room in METERS
Output:
  Area of the room in both squars METERS and square FEET

Rules & Requirements:
  No input validation is required.
  The results needs to be converted to floats.
  Output is a string

---Algorithm---
Define a method named   user_input_length
  Ask the user for the length of the room in meters
  Return the result

Define a method named  user_input_width
  Ask the user for the width of the room in meters.
  Return the result

Define a method named   calculation_and_output
  From inside the method call user_input_length and store the result in the variable   room_length
  From inside the method call user_input_width and store the result in the variable   room_width
  set a variable   area_meters
    area_meters = room_length.to_f * room_width.to_f
  set a variable   area_feet
    area_feet = area_meters * 10.7639
  Return a string with  area_meters   and   area_feet

Invoke puts and pass it   calculation_and_output

=end

def user_input_length
  puts "What is the length of the room in meters:"
  gets.chomp
end

def user_input_width
  puts "What is the width of the room in meters:"
  gets.chomp
end

def calculation_and_output
  room_length = user_input_length
  room_width = user_input_width
  area_meters = room_length.to_f * room_width.to_f
  area_feet = area_meters * 10.7639
  "The area of the room is #{area_meters} square meters (#{area_feet.round(2)} square feet)."
end

puts calculation_and_output

# ---LS Solution---
# SQMETERS_TO_SQFEET = 10.7639

# puts '==> Enter the length of the room in meters: '
# length = gets.to_f

# puts '==> Enter the width of the room in meters: '
# width = gets.to_f

# square_meters = (length * width).round(2)
# square_feet = (square_meters * SQMETERS_TO_SQFEET).round(2)

# puts "The area of the room is #{square_meters} " + \
#      "square meters (#{square_feet} square feet)."
