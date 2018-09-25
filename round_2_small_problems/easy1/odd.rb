# input:
# - one integer which can be positive negative or zero

# output:
# - This method returns `true`

# steps:

def is_odd?(integer)
  integer.abs % 2 != 0 ? true : false
end

puts is_odd?(-5)
