VOWELS = 'aeiou'

# ---My Solution---

def remove_vowels(array)
  voweless_array = Array.new

  array.each do |string|
    voweless_string = String.new

    string.each_char do |character|
      unless VOWELS.include?(character.downcase)
        voweless_string << character
      end
    end
    voweless_array << voweless_string
  end
  voweless_array
end


# ---LS Solution---
def remove_vowels(strings)
  strings.map { |string| string.delete('aeiouAEIOU') }
end


p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']