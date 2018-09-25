# input:
# - an Integer

# output:
# - an Integer, two times the number provided as an argument

# steps:
# 1 - define a method twice(integer)
# 2 - check if integer is a double number
# - - - find integer.digits.size = length
# - - - working_digits = integer.digits
# - - - if [(length / 2)..length] == [0..(length / 2)]

# 3 - if integer is a double number
# - - - return integer
# 4 - elsif integer is not a double number
# - - - return integer * 2
# 5 -


def twice(integer)
  length = integer.digits.size
  working_digits = integer.digits.reverse

  if length == 2
    if working_digits[0] == working_digits[1]
      integer
    else
      integer * 2
    end
  elsif length < 2
    integer * 2
  elsif length > 2
    if working_digits[0..((length / 2) - 1)] == working_digits[length / 2..length]
      integer * 2
    else
      integer
    end
  end

end

p twice(37)
p twice(5)
