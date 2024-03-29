# Getting Things Done

=begin
We wrote a method for moving a given number of elements from one array to another. 
We decide to test it on our todo list, but invoking move on line 11 results in a SystemStackError. 
What does this error mean and why does it happen?
=end

# OG Program
# def move(n, from_array, to_array)
#   to_array << from_array.shift
#   move(n - 1, from_array, to_array)
# end

# # Example

# todo = ['study', 'walk the dog', 'coffee with Tom']
# done = ['apply sunscreen', 'go to the beach']

# move(2, todo, done)

# p todo # should be: ['coffee with Tom']
# p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']

# My Solution
# The method keeps calling itself until the call stack is full.
def move(n, from_array, to_array)
  return if n <= 0 || from_array.empty? # added a conditional to stop recursion.
  to_array << from_array.shift
  move(n - 1, from_array, to_array)
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']