# Alphabetical Numbers

=begin
Input: An array of integers
Output: An array of integers is a specific order

Rules:
  Define a method called `alphabetic_number_sort`
  Output array will have the integers in alphabetical 
      order based on each integers english name
  
Data Structure:
  array
  integer 
  hash
  string
  #sort

  string=>integer 

---Algorithm---
Set a constant variable, `ALPHABETICAL_NUMBERS` to a hash with 0-19 as 
    keys and the spelling of each number as the values

Define a method, `alphabetic_number_sort` that takes one argument, `numbers_array`
set an empty array, `sorted_numbers`
put all of the keys from `ALPHABETICAL_NUMBERS` into an array named `string_numbers_array`
sort all of the elements in `string_numbers_array` alphabetically
iterate over `string_numbers_array`
  take each element and reference it on `ALPHABETICAL_NUMBERS`
  add each value to `sorted_numbers`
return `sorted_numbers`

=end

# --My Solution--

ALPHABETICAL_NUMBERS = { 'one'=>1, 'two'=>2, 'three'=>3, 'four'=>4, 'five'=>5,
                         'six'=>6, 'seven'=>7, 'eight'=>8, 'nine'=>9, 'ten'=>10,
                         'eleven'=>11, 'twelve'=>12, 'thirteen'=>13, 'fourteen'=>14,
                         'fifteen'=>15, 'sixteen'=>16, 'seventeen'=>17, 'eighteen'=>18,
                         'ninteen'=>19, 'zero'=>0
}

def alphabetic_number_sort(numbers_array)
  sorted_numbers = Array.new
  string_numbers_array = ALPHABETICAL_NUMBERS.keys.sort

  string_numbers_array.each do |string| 
    sorted_numbers << ALPHABETICAL_NUMBERS[string]
  end

  sorted_numbers
end

# --LS Solution--

NUMBER_WORDS = %w(zero one two three four
                  five six seven eight nine
                  ten eleven twelve thirteen fourteen
                  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
  numbers.sort_by { |number| NUMBER_WORDS[number] }
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]