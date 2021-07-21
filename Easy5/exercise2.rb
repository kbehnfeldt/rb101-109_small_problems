# After Midnight (Part 1)

=begin
Input: A positive or negative integer
Output: a string in 'hh:mm' (hours:minutes) format

Rules:
  Input can be a positive or negative integer or 0
  Output is a string in hours:minutes format
  If the input integer is positive, count up that many minutes
    ex 65 == '01:05'
  if the input integer it negative, count down that many minutes
    '00:00' == '24:00'
      count down from 24:00
    ex -65 == '22:55'
  60 minutes equals one hour
  the clock is a 24 hour clock
  one day is 1440 minutes
  Input can be more than one day

Data structure: 
  Integer
  String
  '00:00' is the same as '24:00'
  constant variables - ONE_HOUR = 60
                       ONE_DAY = 1440
  recursion - keep subtracting 1440 from the number until its less than 1440?
    for negative number, do above then subtract from 1440. Then divide

---Algorithm---
take the input integer
  if its greater than 1440 (ignoring the - sign), keep subtracting it by 1440 until its less than 1440
  return the result

if the integer is positive
  divide the integer by 60
    the result is hours and the remainder is minutes
  return the result 

if the integer is negative
  subtract the integer from 1440
  divide the integer by 60
    the result is hours:minutes
  return the result

return a string with 'hours:minutes' (interpolation)

=end

# ---My Solution---
ONE_DAY = 1440
ONE_HOUR = 60

def less_than_1440(integer)
  if integer < ONE_DAY
    return integer
  else 
    less_than_1440(integer-ONE_DAY)
  end
end

def make_positive(number)
  ONE_DAY - number
end

def time_of_day(integer)
  int = less_than_1440(integer.abs)
  
  int = make_positive(int) if integer < 0

  hour, min = int.divmod(ONE_HOUR)

  min = min.to_s.prepend("0") if min < 10
  hour = hour.to_s.prepend("0") if hour < 10

  "#{hour}:#{min}"
end  

# ---LS Solution---

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def normalize_minutes_to_0_through_1439(minutes)
  while minutes < 0
    minutes += MINUTES_PER_DAY
  end

  minutes % MINUTES_PER_DAY
end

def time_of_day(delta_minutes)
  delta_minutes = normalize_minutes_to_0_through_1439(delta_minutes)
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"