# write a method that:
# takes an array of numbers
# and returns ana rray with the same number of elements
# and each element has the runnning total from the array

#input:
# an array of integers

# output:
# - an array, with each integer incremented by the one before

#steps:
# 1 - define a method that takes an array
# 2 - loop through that array and
# 4 - add array[counter] to array[current]
# 5 - increment counter
# 6 - break if counter == array.size

def running_total(array)
    counter = 0
    total = 0
    new_array = []

    array.each do |num|
      if counter > 0
        total = array[counter - 1]
        array[counter] = array[counter] + total
      end
      counter += 1
    end
  array
end

puts running_total([2, 5, 13])
puts running_total([14, 11, 7, 15, 20])
