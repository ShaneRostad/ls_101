# input:
# - String

# output:
# - Returns the next to last word in the string passed to it

# steps:
# 1 - define a method penultimate(string)
# 2 - call .split(' ') on the string
# 3 - set last_word =



def penultimate(string)
  last_word = string.split(' ')[-2]
  last_word
end


penultimate('last word')# == 'last'
penultimate('Launch School is great!')# == 'is'
