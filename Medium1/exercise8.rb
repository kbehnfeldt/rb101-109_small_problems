# Fibonacci Numbers (Recursion)

=begin
Input: Integer
Output: Integer

Rules:
  write a method called `fibonacci` that takes 1 argument
  make the method recursive
  compute the 'nth' number where 'nth' is the argument to the method


=end

def fibonacci(num)
  if num < 2
    num
  else 
    fibonacci(num-1) + fibonacci(num-2) 
  end
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765