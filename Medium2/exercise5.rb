# Triangle Sides

=begin
Input: 3 Integers
Output: Symbol

Rules:
  Write a method called `triangle` that takes 3 arguments
  return a symbol stating if the triagle is equilateral, isosceles, scalene, or invalid
    equilateral: All 3 sides are of equal length
    isosceles: 2 sides are of equal length, while the 3rd is different
    scalene: All 3 sides are of different length
    invalid: sum of 2 shortest sides is less than the length of the longest side OR the length of 1 or more sides is =< 0
  the method will use the lengths(arguments) to determine the type of triangle

Data Structure:
  integer
  float
  symbol 
  array???
  #sort??? (long to short to access elements for comparison)
  #all?? (all 3 the same)
  #any??? (any sides == 0)
  #uniq????
  

  1. all 3 the same
  3. 2 sides the same (arr != arr.uniq)?????
  4. all different (else)
  2. sum of 2 shortest less than length of longest or one side =< 0

---MM---
take 3 arguments, put in array, sort. write out all conditionals

---Algorithm---
DEF `triangle` with 3 arguments `side1`, `side2`, `side3`
  push all 3 arguments into `sides` array
  sort `sides` from largest to smallest

  if all elements in `sides` are the same, 
    return :equilateral
  if the sum of the last 2 elements in `sides` is less than the first element OR one element is 0
    return :invalid
  if 2 elements in `sides` are the same (sides != sides.uniq)
    return :isosceles
  else
    return :scalene

=end

# ---My Solution---
def  triangle(side1, side2, side3)
  sides = [side1, side2, side3]
  sides.sort! { |a, b| b <=> a }

  if sides.all?(side1)
    :equilateral
  elsif (sides[-1] + sides[-2]) < sides[0] || sides.any?(0)
    :invalid
  elsif sides != sides.uniq
    :isosceles
  else
    :scalene
  end

end

# ---LS Solution---
def triangle(side1, side2, side3)
  sides = [side1, side2, side3]
  largest_side = sides.max

  case
  when 2 * largest_side > sides.reduce(:+), sides.include?(0)
    :invalid
  when side1 == side2 && side2 == side3
    :equilateral
  when side1 == side2 || side1 == side3 || side2 == side3
    :isosceles
  else
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid