#Inputs:
# one integer argument which may be positive, negative, or zero.

#Outputs:
#Returns true
# if
# number's absolute value is odd

#Assume that the argument is a valid integer value.

def odd?(number)
  if number % 2 == 1
    true
  else
    false
  end
end


puts odd?(2)
puts odd?(3)
puts odd?(-24)
