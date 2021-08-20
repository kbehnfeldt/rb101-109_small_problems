# Cute angles

=begin
Input: Floating point number
Output: String

Rules:
  Must follow (degrees°minutes'seconds") format
    must include degree symbol (°)
    minutes and seconds each have to be 2 digits
  input float is between 0 and 360
  Output is a string
  Must make method called `dms` that  takes one argument


Data Structures:
  To find degrees: (degrees,minutes'seconds")
    whole number stays the same
    divide decimal by 60 == minutes
      divide remainder by 60 == seconds
  Float
  string
  %, divmod *
  array
  integer

---Algorithm---
Make a constant or 2?

take the input float
  separate the whole number and the decimal: (divmod)
    Whole number == `degrees`
    decimal == `min_sec
    multiply `min_sec` by 60 
      Store the whole number in `minutes`
      multiply the remainder by 60
        store result in `seconds`

result is `degrees` `minutes` `seconds`
  format output to >> %(degrees°minutes'seconds") and make it a string
    (use DEGREE constent to help with formatting)

output formatted result

=end

DEGREE = "\xC2\xB0"

def dms(input_float)
  degrees, min_sec = input_float.divmod(1)
  minutes = (min_sec * 60)
  minutes, seconds = minutes.divmod(1)
  seconds = (seconds * 60).round(2).to_i

  if seconds >= 60
    minutes += 1 
    seconds-= 60
  end

  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

p dms(30)  == %(30°00'00")
p dms(76.73)  == %(76°43'48")
p dms(254.6)  == %(254°36'00")
p dms(93.034773)  == %(93°02'05")
p dms(0)  == %(0°00'00")
p dms(360)  == %(360°00'00") || dms(360) == %(0°00'00")