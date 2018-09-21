

# input - an array

# output
# - two arrays
# - - containing the first half and second half of the original Array

def halvsies(array)
  array_1 = []
  array_2 = []
  half = (array.size / 2)

  (array.size - half).times { array_1 << array.shift }
  array.size.times { array_2 << array.shift }
  output = [array_1, array_2]
  output

end
p halvsies([1, 2, 3, 4, 5])
p halvsies([1, 2, 3, 4]) #== [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3])# == [[1, 5, 2], [4, 3]]
p halvsies([5])# ==# [[5], []]
p halvsies([])# [[], []]
