# input:
# - Array of Integers
# output:
# - a float
# - - multiply all numbers in the array of integers together
# - - divides the result by the number of entries in the array
# - - prints the result rounded to 3 decimal places.

# rules:
# - assume the array is non-empty

# steps:
# 1 - define a method that takes an array of integers
# - - show_multiplicative_average(array)
# 2 - store - divisor = array.size
# 3 - sum = call inject on our array with (:+)


def show_multiplicative_average(array)
  divisor = array.size.to_f
  product = array.inject(:*).to_f
  average = (product / divisor)
  puts format('%.3f', average)
end




show_multiplicative_average([3, 5])
show_multiplicative_average([2, 5, 7, 11, 13, 17])

#The result is 7.500

#show_multiplicative_average([6])
#The result is 6.000

#show_multiplicative_average([2, 5, 7, 11, 13, 17])
#The result is 28361.667
