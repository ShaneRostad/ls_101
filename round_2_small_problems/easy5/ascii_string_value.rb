# input:
# - a string

# output:
# - an integer value , the sum of all characters' ASCII value

# steps:
# 1 - define ascii_value(string)
# 2 - iterate through each character in the string
# 3 - use .ord to get the ascii value of the character
# 4 - return the sum of all characters

def ascii_value(string)
  string.split('').map(&:ord).inject(:+)
end

p ascii_value('Four score')
