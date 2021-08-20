# Right Triangles

# ---My Solution---
def triangle(number_of_stars)
  number_of_stars.times do |num|
    stars = ('*' * (num + 1))
    puts (stars.rjust(number_of_stars))
  end
end

# ---LS Solution---
def triangle(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end

triangle(5)
triangle(9)
