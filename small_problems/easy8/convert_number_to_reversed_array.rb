# input:
# - positive integer

# output:
# - that number with its digits reversed.

def reversed_number(integer)

  p integer.to_s.reverse.to_i

end

reversed_number(12345)
reversed_number(12000)
