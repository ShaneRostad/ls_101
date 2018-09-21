# write a method that can rotate the last `n` digits of a number

# input:
# - an integer

# output:
# - an integer with `n` number of digits take from the front and moved to the back.



def rotate_rightmost_digits(input_integer, selector)
  output_integer = input_integer.to_s.split('')
  output_integer << output_integer[-selector]
  output_integer.delete_at(-selector - 1)
  output_integer.join('').to_i
end


def max_rotation(integer)

end



735291
352917
329175



p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
