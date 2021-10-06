# Fibonacci Numbers (Procedural)

=begin
Input: Integer
Output: Integer

Rules:
  rewrite `fibonacci` from the previous exercise so that it does not use recursion

Data Structure:


  (from previous exercise)
    def fibonacci(num)
  if num < 2
    num
  else 
    fibonacci(num-1) + fibonacci(num-2) 
  end
end


# ideas
  number = 20
    a = number - 1
    b = number - 2
    repeat until both are < 2
    result = a + b

    number - 1 and repeat


=end

# ---LS Solution---
def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501