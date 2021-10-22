# Seeing Stars

=begin
Input: Integer
Output: Strings

Rules:
write a method called `star` that takes 1 argument
the method should display an 8-pointed star in a grid determined by the argument to `star`
the smallest star will be 7x7

Data Structure:
Integer
String
Array???



=end

def print_row(grid_size, distance_from_center)
  number_of_spaces = distance_from_center - 1
  spaces = ' ' * number_of_spaces
  output = Array.new(3, '*').join(spaces)
  puts output.center(grid_size)
end

def star(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(1) { |distance| print_row(grid_size, distance) }
  puts '*' * grid_size
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end