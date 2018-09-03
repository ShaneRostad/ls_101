#Write a method that:

#inputs:
# one argument: a string

#outputs:
# The same string with words in reverse order

# start by accepting a string as an argument
# then split that string into an array at each " "
# then reverse the order of that array
# then convert concatenate that array back into a string

def reverse_this(string)
  array = string.split(" ").reverse.join(" ")

end

puts reverse_this("Hello World")
puts reverse_this("hello you little world")
