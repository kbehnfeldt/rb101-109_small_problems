# Palindromic Strings (Part 1)

# def palindrome?(string)
#   string.reverse == string
# end


# p palindrome?('madam')
# p palindrome?('Madam')
# p palindrome?("madam i'm adam")
# p palindrome?('356653')

# ---Further Exploration---

# def array_palindrome?(array)
#   array.reverse == array
# end

# p array_palindrome?([1, 2, 1])
# p array_palindrome?(['Hi', 'there', 'hi'])
# p array_palindrome?([3, 4])
# p array_palindrome?(['Hi', 'there', 'Hi'])


def string_or_array_palindrome?(object)
  object.reverse == object
end

p string_or_array_palindrome?([1, 2, 1])
p string_or_array_palindrome?(['Hi', 'there', 'hi'])
p string_or_array_palindrome?('madam')
p string_or_array_palindrome?('Madam')