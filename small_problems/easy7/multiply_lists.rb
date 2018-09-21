# input:
# - two Array arguments of Integers
# output:
# - a new Array, containing the product of each pair of numbers from the arguments that have the same index

# assumptions:
# - assume that the arguments contain the same number of elements


# steps
# 1 - define a method that takes two arrays
# 2 - initialize a local variable to an empty array




=begin

def multiply_list(array_1, array_2)
  return_array = []
  counter = 0

  loop do
      break if counter == array_1.size
      return_array << (array_1[counter].to_i * array_2[counter].to_i)

      counter += 1
  end
  return_array
end

=end

def multiply_list(array_1, array_2)
  array_1.zip(array_2).map { |array| array.inject(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11])
