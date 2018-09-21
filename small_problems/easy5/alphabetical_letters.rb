# write a method
# takes an array of integers between 0 and 19, and returns an array
# of those integers sorted based on the english words for each number

# examples:

# alphabetic_number_sort((0..19).to_a) == [
#  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#  6, 16, 10, 13, 3, 12, 2, 0
# ]

#steps:
# define a method that accepts an array
# create a hash table for

TABLE = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five",
         6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten",
         11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen",
         15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen",
         19 => "nineteen"}


def alphabetic_number_sort(numbers)
  numbers.sort_by {|number| TABLE[number]}
end

p alphabetic_number_sort((1..19).to_a)
