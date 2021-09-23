# fizzbuzz

=begin
Input: 2 integers
Output: string

Rules:
  define a method called `fizzbuzz` that takes 2 arguments
  give the argument 2 numbers, a starting and ending number
  print all numbers between the 2 given numbers
    if number is divisible by 3, output 'Fizz`
    if number is divisilbe by 5, output `Buzz`
    if divisible by 3 and 5, output `FizzBuzz`
    else output number
    
Data Structure:
  iteration (#upto???)
  integer
  string
  case/if statement
    puts

---Algorithm---
DEF `fizzbuzz` with 2 arguments `num1` & `num2`
  create a range with the 2 given numbers
    iterate over the range
      if number is divisible by 3, return 'Fizz`
      if number is divisilbe by 5, return `Buzz`
      if divisible by 3 and 5, return `FizzBuzz`
      else return number
  output the return value of the iteration

=end

# ---My Solution 1---
# def fizzbuzz(num1, num2)

#   result = (num1..num2).map do |num|
#     if (num % 3 == 0) && (num % 5 == 0)
#       "FizzBuzz"
#     elsif (num % 3 == 0)
#       "Fizz"
#     elsif (num % 5 == 0)
#       "Buzz"
#     else
#       num
#     end
#   end

#   puts result.join(', ')
# end


# ---LS Solution---
def fizzbuzz(starting_number, ending_number)
  result = []
  starting_number.upto(ending_number) do |number|
    result << fizzbuzz_value(number)
  end
  puts result.join(', ')
end

def fizzbuzz_value(number)
  case
  when number % 3 == 0 && number % 5 == 0
    'FizzBuzz'
  when number % 5 == 0
    'Buzz'
  when number % 3 == 0
    'Fizz'
  else
    number
  end
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz