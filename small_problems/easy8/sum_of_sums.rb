# input:
# - Array of integers

# output:
# - returns the sum of the sums of each leading subsequence for that array
# - basically, if we have [1, 2, 3] we want (1) + (1 + 2) + (1 + 2 + 3)

# assumptions:
# - Array always contains at least one number

# steps:
# 1 - define a method that takes an array of integers
# 2 - Loop through
# - -



# 3 - then call .inject(:+) on each array
def sum_of_sums(array)
  counter = 0
  sums = []
  loop do
    break if counter == array.size
    sums << array[0..counter]
    counter += 1
  end
  sum_of_sums = sums.map {|arr_of_int| arr_of_int.inject(:+)}.inject(:+)
end


p sum_of_sums([3, 5, 2])# == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3])# == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4])# == 4
p sum_of_sums([1, 2, 3, 4, 5])# == 35
