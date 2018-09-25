# input:
# - a positive integer
# output:
# - returns a list of the digits in the number

def digit_list(integer)
  integer.digits.reverse
end

puts digit_list(12345)
