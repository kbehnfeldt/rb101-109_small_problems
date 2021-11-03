# Countdown

def decrease(counter)
  counter -= 1
end

counter = 10

10.times do
  puts counter
  counter = decrease(counter) 
end

puts 'LAUNCH!'

# added `counter = ` on line 11 to store the return value of `decrease`. Since the `decrease` method is self contained, the local variable
# counter outside of the method was not being reassigned to the appropriate value.