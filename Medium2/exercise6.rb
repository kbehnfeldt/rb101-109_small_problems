#  Tri-Angles

=begin
Input: Integers
Output: Symbols

Rules:
  Write a method called `triangle` that takes 3 arguments
  given 3 arguments(degrees) determin the type of triangle
    right, acute, abtuse, or invalid
  All values will be integers
  All arguments are in degrees

Data Structure:
  Integer
  Array
  #any???
  #all???
  comparison

     right:   One angle of the triangle is a right angle (90 degrees)
     acute:   All 3 angles of the triangle are less than 90 degrees
     obtuse:  One angle is greater than 90 degrees.
  1. invalid: sum of all angle is not 180 degrees or 1 or more angles are =< 0

---Algorithm---
DEF `triangle` with 3 arguments, `side1`, `side2`, and `side3`
  SET `sides` to an array with the arguments as elements.

  if sides.sum != 180 || sides.any? { |side| side =< 0}
    :invalid
  if `sides`.any?(90)
    :right
  if `sides`.all { |side| side < 90 }
    :acute
  else
    :obtuse

=end

# ---My Solution---
def triangle(side1, side2, side3)
  sides = [side1, side2, side3]

  case
  when sides.sum != 180 || sides.any? { |side| side <= 0 }
    :invalid
  when sides.any?(90)
    :right
  when sides.all? { |side| side < 90 }
    :acute
  else
    :obtuse
  end

end

# ---LS Solution---
def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]

  case
  when angles.reduce(:+) != 180, angles.include?(0)
    :invalid
  when angles.include?(90)
    :right
  when angles.all? { |angle| angle < 90 }
    :acute
  else
    :obtuse
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid