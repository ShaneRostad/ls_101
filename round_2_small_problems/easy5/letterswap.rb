# input:
# - a string of multiple words

# output:
# - a string in which the first and last letter of each word are swapped

# steps:
# 1 - define a method swap(string)
# 2 - split the string into an array of words
# - - - using string.split(' ')
# 3 - iterate through the string
# - - - using map
# 4 - swap the first character and the last character
# - - -
# 5 - join the string back together

def swap(string)
  output = string.split(' ').map do |word|
    first = word[0]
    last = word[-1]
    word[0] = last
    word[-1] = first
    word
  end
  output.join(' ')
end

p swap('Oh what a wonderful day it is')
p swap('a')
