# Welcome Stranger

def greetings(array, hash)
  "Hello #{array.join(' ')}! Nice to have a #{hash.values.join(' ')} around."
end


puts greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.