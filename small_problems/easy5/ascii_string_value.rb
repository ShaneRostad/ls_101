#Write a method that determines and returns the ASCII string value
# of a string that is passed in as an argument.
# The ASCII string value is the sum of the ASCII values of every char
# in the string.

# input: a string

#output: the sum of all ASCII values in that string

#examples:
# ascii_value('Four score') == 984
# ascii_value('Launch School') == 1251
# ascii_value('a') == 97
# ascii_value('') == 0

#steps:
# 1 - define method ascii_value and accept string as an argument
# 1.5 - assign a variable total = 0
# 2 - iterate over each character in that string
# 3 - transform the string into it's ASCII value using #ord
# 4 - total += ASCII value
# 5 - return the total


def ascii_value(string)
  total = 0
  string.each_char do |char|
    total += char.ord
  end
  total
end

puts ascii_value('Four score')
puts ascii_value('Launch School')
puts ascii_value('a')
puts ascii_value('')
