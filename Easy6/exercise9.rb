# Does My List Include This?

=begin
Input: array and integer
Output: Boolean value

Rules:
  write a method named include?
  CANNOT use #include?
  method compares the elements in an array to see if any match the second argument


Data STructures
  Array
  Boolean
  Integer
  iteration

---Algorithm---
DEF `include?` that takes 2 arguments, `array` and `comparer`
SET `boolean` to false

iterate through the array
  compare each element to `comparer`
  if element == `comparer`
    set `boolean` to true
  otherwise
    set `boolean` to false

return `boolean`
=end

# ---My Solution 1---
# def include?(array, comparer)
#   boolean = false

#   array.each { |ele| boolean = true if ele == comparer }

#   boolean
# end

# # ---My Solution 2---
# def include?(array, comparer)
#   array.any? { |ele| ele == comparer }
# end

# # ---LS Solution---
# def include?(array, value)
#   !!array.find_index(value)
# end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false