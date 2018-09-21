# Write a method that combines two arrays
# returns new array with all elements from two arguments
# With the elements taken in alteration


# input: two arrays of different objects

# output: a single array, with the elements from the arguments in alternating order

# steps:
# 1 - define a method that takes two arguments array_1 and array_2
# 2 - initialize an empty array `sorted_array`
# 3 - Create a loop,
# - - sorted_array << array_1.shift
# - - sorted_array << array_2.shift
# - - break if array_1 && array_2.empty?
# - - end

=begin
def interleave(array_1, array_2)
  sorted_array = []
  loop do
    sorted_array << array_1.shift
    sorted_array << array_2.shift
    break if array_1.empty? && array_2.empty?
  end
  sorted_array
end

p interleave([1, 2, 3], ['a', 'b', 'c'])
=end

def interleave(array_1, array_2)
  return array_1.zip(array_2).flatten
end
p interleave([1, 2, 3], ['a', 'b', 'c'])

#p [1, 2, 3].zip(['a', 'b', 'c']).flatten
