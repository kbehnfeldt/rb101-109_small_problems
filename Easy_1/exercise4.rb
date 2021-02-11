# How Many?

=begin
-MM-
Take the list of strings and count how many times each string appears in the list.
Then output each string along with a number for each time it appears in the list.

-Algorithm-
create a method definition called COUNT_OCCURENCES that accepts one argument
create an empty hash called STRINGS_TIMES
iterate through the VEHICLES array
  If the string from VEHICLES is not a key in the STRINGS_TIMES hash, add it and put the value to 1
  if the string is a key in the hash, increase the value by 1
iterate through the STRINGS_TIMES hash and output each key-value pair
=end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

# def count_occurrences(strings)
#   string_times = Hash.new

#   strings.each do |string|
#     if string_times.include?(string)
#       string_times[string] += 1
#     else
#       string_times[string] = 1
#     end
#   end
#   string_times.each { |key, value| puts "#{key} => #{value}" }
# end

#LS Solution
def count_occurrences(array)
  occurrences = {}

  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

count_occurrences(vehicles)