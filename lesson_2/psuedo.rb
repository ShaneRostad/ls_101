#1 a method that returns the sum of two integers
#2 a method that takes an array of strings, and returns a string that is all those strings concatenated together
#3 a method that takes an array of integers, and returns a new array with every other element

#1
START
GET an integer from the user and SET = number1
GET another integer from the user and SET = number2

SET result = number1 + number2

PRINT result

#2 a method that takes an array of strings, and returns a string that is all those strings concatenated together
START

# Given an array of strings

START
take an array_of_strings

SET new_string = join each string within the array together
return new_string

END

#3 a method that takes an array of integers, and returns a new array with every other element

START
take an array_of_integers
SET counter = 0
SET new_array = nil

new_array = loop through array_of_integers and only map an element to new_array when counter = odd numbers
counter + 1
end the loop

return new_array

END
