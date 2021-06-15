# Running Totals

=begin
Input:
  An array of integers
Output:
  an array that is the running total of the input array

Rules & Requirements:
  Must be a method
  Output has to be an array of integers
Data Structure: 
  Array
  Integers
  #reduce??

---Algorithm---


=end

def running_total(array)
  running_total_array = Array.new
  running_total_array << array [0]

  array.reduce do |sum, num|
    sum += num
    running_total_array << sum
    sum
  end

  running_total_array.compact
end  

#---LS Solution---
# def running_total(array)
#   sum = 0
#   array.map { |value| sum += value }
# end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []