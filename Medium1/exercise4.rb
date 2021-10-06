require 'pry'
# 1000 Lights

=begin
Input: Integer
Output: An array of Integers

Rules:
  write a method that takes 1 argument(n)
  there are a number of light swithes, from 1 to argument(n)
    round 1, multiples of  1 get toggled (all light switches are now on)
    round 2, multiples of 2 get toggled 
    ......
    repeat n number of times
  output an array with the switches that are turned on after the repetitions are completed

Data Structure:
  if
  hash????
  array
  integer
  #include?
  #select
  #times

round 1 - multiples of 1
rount 2 - multiples of 2
round 3 - multiples of 3
round 4 - multiples of 4
......
if n = 5
  round 1: every light is turned on
  round 2: lights 2 and 4 are now off; 1, 3, 5 are on
  round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
  round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
  round 5: lights 2, 3, and 5 are now off; 1 and 4 are on

---Algorithm---
DEF `toggle_lights` with 1 argument, `n`
  populate a hash with keys 1 to `n` and set all of the values to 'off'
    SET `switches` to an empty hash
    `n` times add a key-value pair to `switches` with the current number as the key and value set to 'off'

  `n` times iterate and
    SET block argument + 1 to `num`

    iterate over `switches` passing in the key and value
      if `key` % `num` == 0
        chahge the value of the value associated with the current key
      else
        do nothing
      
  select all of the values that are set to 'on' and return their keys
  return an array of the selected keys

=end

def populate_switches(n)
  switches = {}

  n.times do |key|
    key += 1
    switches[key] = 'off'
  end

  switches
end

def toggle_lights(n)
  switches = populate_switches(n)
  
  n.times do |num|
    num += 1

    switches.each do |key, value|
      switches[key] = (value == 'off' ? 'on' : 'off') if key % num == 0
    end
  end

  switches.select { |_, value| value == 'on' }.keys
end

p toggle_lights(5)
p toggle_lights(10)