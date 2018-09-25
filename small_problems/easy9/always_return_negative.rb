# input:
# - an integer

# output:
# - if positive, return negative.
# - if number is 0 or negative, return negative


def negative(integer)
  if integer > 0
    integer * -1
  else
    integer
  end
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0
