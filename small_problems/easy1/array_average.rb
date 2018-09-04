#method takes one argument

#input: an array containing integers

#output: returns the average of all numbers in the array

#conditions:
# - the array will never be empty
# - the numbers will always be positive integers


# 1 accept an array as an argument
# 2 iterate over each number in that array
# 3 add all of the numbers together
# 4 divide that by the length of the array
# 5 return the final value


def average(numbers)
  average = 0
  total = 0
  numbers.each do |number|
    total += number
  end
  average = total / numbers.size
  average
end



puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])
