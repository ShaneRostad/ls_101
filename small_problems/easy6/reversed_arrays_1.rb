# write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same array object

#input: an array

#output: the same array object

#algorithm:

# - 1 define a method that takes an array as an argument
# - 2 reverse the elements in place (mutate the original object)
# - -

# - 3 return the mutates Array


def reverse!(list)
  holder = []
  list.size.times { holder << list.pop }
  holder.size.times { list << holder.shift }
  list
end
list = %w(a b c d e)
p list
result = reverse!(list)
p result
p list.object_id
p result.object_id
