# Name Swapping

# ---My Solution---
def swap_name(name)
  names = name.split
  names[1], names[0] = names[0], names[1]
  names.join(', ')
end

# ---LS Solution---
def swap_name(name)
  name.split(' ').reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'