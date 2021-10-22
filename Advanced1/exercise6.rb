# Fix the Bug

def my_method(array)
  if array.empty?
    []
  elsif array.size > 1 # array.size > 1 was missing from the original code
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])


# def method(num)
#   if num > 5
#     'big'
#   elsif
#     'no conditional'
#   else
#     'else'
#   end
# end

# p method(3)