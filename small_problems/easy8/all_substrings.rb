# input:
# - a String

# output:
# - all possible substrings in a new Array

def all_substrings(string)
  starting_counter = 0

  return_array = []

  loop do
    break if string.size == starting_counter
    counter = 0
    loop do
      break if counter == string.size
      return_array << string[starting_counter..counter]
      counter += 1
    end
    starting_counter += 1
  end

  return_array.delete("")
  return_array
end

p all_substrings('abcde')
