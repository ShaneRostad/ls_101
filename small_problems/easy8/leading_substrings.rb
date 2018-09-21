# input:
# - a String

# output:
# - return a list of all substrings of a string that start at the beginning of the original string. then sort them in order from smallest to longest

# steps:
# 1 - define a method substrings_at_start(string)
# 2 - initialize a counter variable to 0
# 3 - initialize an array to be returned return_array = []
# 4 - loop do
# 4 -



def substrings_at_start(string)
  counter = 0
  return_array = []

  loop do
    break if counter == string.size
    return_array << string[0..counter]
    counter += 1
  end
  return_array
end

p substrings_at_start('abc')
