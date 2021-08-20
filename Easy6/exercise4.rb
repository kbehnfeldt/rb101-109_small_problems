# Reversed Arrays (Part 1)

=begin
Input: Array
Output:The same Array

Rules:
  MUST mutate the original array
  the elements should be in reverse order
    The elements themselves should NOT be reversed  ex 'abc' == 'abc'
  CANNOT USE #reverse or #reverse!

Data Structure:
  Array

=end

# ---My Solution---
def reverse!(array)
  counter = 1

  until counter >= list.length
    store = list.pop
    list.insert((counter-1), store) 
    counter += 1
  end

  array
end

#---LS Solution---
def reverse!(array)
  left_index = 0
  right_index = -1

  while left_index < array.size / 2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end

  array
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # trues