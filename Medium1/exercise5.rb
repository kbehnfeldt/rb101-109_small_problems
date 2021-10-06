# Diamonds

=begin
Input: Integer
Output: String

Rules:
  write a method called `diamond` that takes 1 argument
  It will output a diamond made of * and the argument determines how many rows big the diamond will be.
  the middle row will be the same length as the argument provided
    the other rows will go from 1 to argument length back down to 1
    All rows will have an odd number of *s
  The argument provided will always be odd

Data Structure:
  Integer
  String
  Array?????
  concatination
  #puts

  populate an array, reverse a copy of the array, remove the first element, them merge them
    num + 2 to populate array

---Algorithm---
DEF `diamond` that takes 1 argument, `rows`
  SET `stars` to an empty array

  DEF first_stars(stars)
    SET `num` to 1

    begin a loop that breaks when `num` == `rows`
      take '*' * num
      push it to `stars`
      add 2 to num
      repeat.......

  DEF last_stars(stars)
    duplicate `stars`, reverse it, and store it in `reversed_stars`
    remove the first element in `reversed_stars`
    join `stars` and `reversed_stars` into one array

  DEF output_stars(stars)
    iterate over `stars` and output each element on a new line

=end

# ---My Solution--- (with Further Exploration)
def first_stars(array, rows)
  num = 1

  loop do
    array << ('*' * num)
    break if num >= rows
    num += 2
  end

  array
end

def last_stars(array)
  array = array.reverse
  array[1..-1]
end

def output_stars(stars, rows)
  stars.each do|row| 

    if row.size > 2
      row.chars do |char|
        row[1..-2] = (' ' * (row.size - 2))
      end 
    end
    
    puts row.center(rows)
  end
end

def diamond(rows)
  stars = []
  stars = first_stars(stars, rows) + last_stars(stars)
  output_stars(stars, rows)
end

# ---LS Solution---
# def print_row(grid_size, distance_from_center)
#   number_of_stars = grid_size - 2 * distance_from_center
#   stars = '*' * number_of_stars
#   puts stars.center(grid_size)
# end

# def diamond(grid_size)
#   max_distance = (grid_size - 1) / 2
#   max_distance.downto(0) { |distance| print_row(grid_size, distance) }
#   1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
# end

diamond(1)
puts "------------"
diamond(3)
puts "------------"
diamond(9)