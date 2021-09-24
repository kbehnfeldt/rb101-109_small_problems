# Grade book

=begin
Input: Integers
Output: String

Rules:
  write a method, `get_grade` that takes 3 arguments
  find the average of the three scores and return a letter grade based on the average
  all arguments (scores) will be between 0 and 100

Data Structure:
  Integer
  string
  #between?
  case statement

  Scores:
    90 <= score <= 100	'A'
    80 <= score < 90	'B'
    70 <= score < 80	'C'
    60 <= score < 70	'D'
    0 <= score < 60	'F'

---Algorithm---
DEF `get_grades` (score1, score2, score3)
  add all of the scores together and divide the sum by the number of arguments(3)
    store the return vale in `average_score`
  compare `average_score` to the scores listed above
  return the appropriate string letter

=end

# ---My Solution---
def get_grade(score1, score2, score3)
  average_score = ((score1 + score2 + score3) / 3)

  if average_score.between?(90, 100)   then "A"
  elsif average_score.between?(80, 89) then "B"
  elsif average_score.between?(70, 79) then "C"
  elsif average_score.between?(60, 69) then "D"
  elsif average_score.between?(0, 59)  then "F"
  end

end

# ---LS Solution---
def get_grade(s1, s2, s3)
  result = (s1 + s2 + s3)/3

  case result
  when 90..100 then 'A'
  when 80..89  then 'B'
  when 70..79  then 'C'
  when 60..69  then 'D'
  else              'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"