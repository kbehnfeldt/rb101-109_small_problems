# Bubble Sort

=begin
Input: Array
Output: Array

Rules:
  write a method called `bubble_sort` that takes 1 argument.
  sort the array by comparing the first 2 elements, then the second 2, then the third 2......
    sort the elements in place (Mutate the origlnal array)
  Every array will contain at least 2 elements


Data Structure:
  array
  string
  integer
  parallel assignment
  #upto????

  compares 1&2, 2&3, 3&4, 4&5...
    one less element needs to be compared on each iteration(1 less trailing element)

  compare array.size times, reducing size by 1 on each iteration

---Algroithm---
def `buble_sort!` with 1 argument, `list`
  SET `size` to the size of `list`
  
  until `size` == 0
    SET `count` to 0
    iterate over `list` `size` number of times
      check if the element at `list`[count] is less than `list`[count +1]
        if true, swap them - list[count+1], list[count] = list[count], list[count+1]
        else, keep going.
    subtract 1 from `size` and iterate again until `size` == 0

=end

# ---My Solution---
def bubble_sort!(list)
  size = list.size

  until size <= 0
    count = 0

    2.upto(size) do
      if list[count] > list[count + 1]
        list[count + 1], list[count] = list[count], list[count + 1]
      end
      count += 1
    end

    size -= 1
  end

end

# ---LS Solution---
def bubble_sort!(array)
  loop do
    swapped = false
    1.upto(array.size - 1) do |index|
      next if array[index - 1] <= array[index]
      array[index - 1], array[index] = array[index], array[index - 1]
      swapped = true
    end

    break unless swapped
  end
  nil
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)