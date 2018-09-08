#String#to_i method converts a string of numeric characters to an Integer.

#write a method that takes a string of digits, and returns
# the appropriate number as an integer.
# do not use any of the methods mentioned above

#Assume all characters are numeric

#do not use any of the standard conversion methods available in Ruby, such as
# String#to_i, integer(), etc. Your method should do this the old-fashioned way
# and calculate the result by analyzing the characters in the String


#input:
# - a string of numbers

#output:
# - the string of numbers converted to an integer

DIGITS = {
   '1' => 1,
   '2' => 2,
   '3' => 3,
   '4' => 4,
   '5' => 5,
   '6' => 6,
   '7' => 7,
   '8' => 8,
   '9' => 9
 }

 def string_to_integer(string)
   digits = string.chars.map { |char| DIGITS[char] }

   value = 0
   digits.each { |digit| value = 10 * value + digit }
   value
 end

puts string_to_integer('4321')
puts string_to_integer('152345')
