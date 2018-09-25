# input: an array

def binary_array_to_number(arr)
  counter = 1
  binary_value = 1
  sum = 0

  loop do
    break if counter > arr.size
    if arr[-counter] == 1
      sum += binary_value
    end
    counter += 1
    binary_value *= 2
  end
  sum
end

p binary_array_to_number([1,1,1,1])





# example, binary_array_to_number([0,0,0,1]) => 1

# steps:
# take an array
# set counter = 1
# binary_value = 1
# iterate through that array starting at array[-counter]
# if array[-counter] == 1
#
# binary_value *= 2
