# Staggered Caps (Part 2)

# ---My Solution---
def staggered_case(string)
  result = ''
  need_upper = true

  string.chars.each do |char|
    if need_upper && char =~ /[a-zA-Z]/
      result += char.upcase
      need_upper = !need_upper
    elsif !need_upper && char =~ /[a-zA-Z]/
      result += char.downcase
      need_upper = !need_upper
    else
      result += char
    end
  end

  result
end

# ---LS Solution---
def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if char =~ /[a-z]/i
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
      need_upper = !need_upper
    else
      result += char
    end
  end
  result
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'