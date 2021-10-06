# Stack Machine Interpretation

=begin
Input: String (or array of strings)
Output: String

Rules:
  write a method, `minilang` that takes at least 1 argument(arg*)
  the method will have a `stack` and `register`
  operations will be performed to `stack` and `register` based on supplied argument(s)
  No invalid arguments will be provided.
  all numeric operations will be integers, not floats
  `register` should be initialized to 0
    the operation `pop` will reassign `register`

  List of operations:
    n     Place a value n in the "register". Do not modify the stack.
    PUSH  Push the register value on to the stack. Leave the value in the register.
    ADD   Pops a value from the stack and adds it to the register value, storing the result in the register.
    SUB   Pops a value from the stack and subtracts it from the register value, storing the result in the register.
    MULT  Pops a value from the stack and multiplies it by the register value, storing the result in the register.
    DIV   Pops a value from the stack and divides it into the register value, storing the integer result in the register.
    MOD   Pops a value from the stack and divides it into the register value, ***storing the integer remainder of the division in the register.***
    POP   Remove the topmost item from the stack and place in register (reassign register)
    PRINT Print the register value

Data Structure:
  Array
  String
  Integer
  #pop
  #shift
  * / + - #divmod
  case statement???

---MM---
  write a method that preforms a series of operations to 1 or 2 variables, `stack` and/or `register` based on the provided operation(s)
    main method will be a loop, each operation should be it's own method

---Algorithm---
DEF `minilang` that takes 1 argument stored in `operations`
  split `operations` into an array
  SET `register` to 0
  SET `stack` to an empty array

  loop until `operations` array is empty
    SET `current_operation` to the current first element in `operations`, removing that element from the array (#shift)
    compare `current_operation` to the following method names and invoke the appropriate method (when???)

    DEF `add_num` (current_operation.to_i, register) *****else clause******* make sure it's an integer
      add the provided number to the register

    DEF `push` (reg, stack)
      push the current register value to the stack, mutating the stack  LEAVE that value in register

    DEF `add` (stack)
      permanently remove the last value from stack, and add it to the register value, changing the register value

    DEF `sub` (reg, stack)
      permanently remove the last value from stack, and subtract it from the register value, changing the register value

    DEF `mult` (reg, stack)
      permanently remove the last value from stack, and multiply it to the register value, changing the register value

    DEF `div` (reg, stack)
      permanently remove the last value from stack, and divide it from the register value, changing the register value

    DEF `mod` (reg, stack)
      permanently remove the last value from stack, and divide it from the register value, changing the register value to the integer remainder

    DEF `pop` (reg, stack)
      permanently remove the last value from stack, and change the register value to the removed value

    DEF `print` (reg)
      print the register value
    

=end

# ---My long Solution---
def add_num(num)
  num.to_i
end

def push(register, stack)
  stack << register
end

def remove_top(stack)
  stack.pop
end

def remainder(stack, register)
  arr = register.divmod(stack.pop)
  arr[1]
end

def output(register)
  puts register
end

def minilang(operations)
  operations = operations.split
  register = 0
  stack = []

  until operations.empty?
    current_operation = operations.shift

    case current_operation.downcase
    when 'push'  then push(register, stack)
    when 'add'   then register += remove_top(stack)
    when 'sub'   then register -= remove_top(stack)
    when 'mult'  then register *= remove_top(stack)
    when 'div'   then register /= remove_top(stack)
    when 'mod'   then register = remainder(stack, register)
    when 'pop'   then register = remove_top(stack)
    when 'print' then output(register)
    else              register = add_num(current_operation)
    end

  end
end

# ---LS Solution---
def minilang(program)
  stack = []
  register = 0
  program.split.each do |token|
    case token
    when 'ADD'   then register += stack.pop
    when 'DIV'   then register /= stack.pop
    when 'MULT'  then register *= stack.pop
    when 'MOD'   then register %= stack.pop
    when 'SUB'   then register -= stack.pop
    when 'PUSH'  then stack.push(register)
    when 'POP'   then register = stack.pop
    when 'PRINT' then puts register
    else              register = token.to_i
    end
  end
end

minilang('PRINT')
puts '-----------'
minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
puts '-----------'
minilang('5 PUSH POP PRINT')
puts '-----------'
minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
puts '-----------'
minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
puts '-----------'
minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
puts '-----------'
minilang('-3 PUSH 5 SUB PRINT')
puts '-----------'
minilang('6 PUSH')