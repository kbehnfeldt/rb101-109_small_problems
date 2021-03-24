# Squaring an argument

def square(num)
  multiply(num, num)
end

def multiply(num1, num2)
  num1 * num2
end

p square(5) == 25
p square(-8) == 64