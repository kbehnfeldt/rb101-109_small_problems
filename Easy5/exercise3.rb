# After Midnight Part 2

=begin
Input: A string with 2 sets of 2 numbers separated by :
Output: An integer

Rules:
  Take the given time and convert it to minutes before or after midnight
  '24:00' is equal to midnight ('00:00')

Data Structures:
  integer
  strings


---Algorithm---
  --After Midnight--
Take the first 2 numbers from the given string
  convert to integer
  store in variable `hours`

Take the second 2 numbers in the string
  convert to integer
  store in variable `minutes`

multiply `hours` by 60 and add to `minutes`

if `minutes` is greater than 1440, 
  subtract `minutes` from 1440 until its less than 1440

return `minutes`

  --Before Midnight--
Take the first 2 numbers from the given string
  convert to integer
  store in variable `hours`

Take the second 2 numbers in the string
  convert to integer
  store in variable `minutes`

multiply `hours` by 60 and add to `minutes`

if `minutes` is greater than 1440, 
  subtract `minutes` from 1440 until its less than 1440

=end

ONE_DAY = 1440
ONE_HOUR = 60

def after_midnight(time)
  hours = time[0, 2].to_i
  minutes = time[3, 2].to_i

  minutes = (hours * ONE_HOUR) + minutes

  while minutes >= ONE_DAY
    minutes -= ONE_DAY
  end
  
  minutes
end

def before_midnight(time)
  hours = time[0, 2].to_i
  minutes = time[3, 2].to_i

  minutes = (hours * ONE_HOUR) + minutes
  minutes = ONE_DAY - minutes

  while minutes >= ONE_DAY
    minutes -= ONE_DAY
  end
  
  minutes
end

# ---LS Solution---
HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight(time_str)
  hours, minutes = time_str.split(':').map(&:to_i)
  (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end

def before_midnight(time_str)
  delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
  delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
  delta_minutes
end


p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0