# create a small stack machine language

# input:
# - a string with commands and integer values


# register = current value (not part of the stack)
# MULT multiplies the stack value with the register value, removes the value from the stack, and then stores the result back in the register.



# thoughts: we are going to need to check if an item in the string is an integer or a string.
# we can do this by splitting the string into an array, then setting stack = array.select integers.
# then we will have set commands = array.select strings


# steps:
# 1 - accept a string
# 2 - initialize three variables:
# - - - stack = []
# - - - commands = []
# - - - register = 0
# 3 - iterate through the string, and push strings into `commands`
# - - and integers into `stack`
# 4 -



def minilang(string)
  register = 0
  stack = []
  string.split(' ').each do |order|
    case order
    when 'ADD'                       then register += stack.pop
    when 'PUSH'                      then stack << register
    when 'SUB'                       then register -= stack.pop
    when 'MULT'                      then register *= stack.pop
    when 'DIV'                       then register /= stack.pop
    when 'MOD'                       then register = (register % stack.pop)
    when 'POP'                       then register = stack.pop
    when 'PRINT'                     then puts register
    else                                  register = order.to_i
    end
  end
end


minilang('5 PUSH 3 MULT PRINT')

=begin
    if str.to_i.to_s == str.to_s
      stack << str.to_i
    else
      commands << str
    end
  end
=end
