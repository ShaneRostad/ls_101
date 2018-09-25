# input:
# - an array containing integers

# output:
# - returns the average of all numbers in the array


def average(array)
  array.sum / array.size
end

puts average([1, 5, 87, 45, 8, 8])
