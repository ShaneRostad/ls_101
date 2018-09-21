# input:
# - an array

# output:
# - a new array, in which the first element is moved to the end of the Array

# steps:
# 1 - define a method that takes an array
# 2 - initialize a new array to return
# 3 -

def rotate_array(input_array)
  output_array = input_array.select { |x| x }
  output_array << output_array.shift
  output_array
end


x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]
