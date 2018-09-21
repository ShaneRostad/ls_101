# input:
# - takes a sentence string as input

# output:
# - returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

# steps:
# 1 - define a method that takes a string
# 2 - initialize an array [0..9]
# 3 - split the string (' ')
# 4 - iterate over the array using .map



def word_to_digit(string)
  check_array = %w(zero one two three four five six seven eight nine)

  new_string = string.split(/\b/).map do |word|
    if check_array.include?(word)
      check_array.index(word)
    else
      word
    end
  end
  new_string.join
end




#example:
p word_to_digit('Please call me at five five five one two three four. Thanks.')# == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
