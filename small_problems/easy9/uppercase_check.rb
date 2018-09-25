# input:
# - a string argument

# output:
# - a boolean
# - - true if all of the alphabetic characters inside the string are upcase
# - - false if otherwise


# steps:
# 1 - intiialize a constant (A..Z)
# 2 - strip the string of all alphanumeric characters
# 2 - check all characters in a string if they're in (A..Z)

def uppercase?(string)
  string == string.upcase
end
