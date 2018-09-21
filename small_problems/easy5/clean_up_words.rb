#given a string that consists of some words and an assortment of
# non-aphabetic characters, write a method that returns that string
# with all of the non-alphabetic characters replaced by spaces
# If one or more non-alphabetic characters occur in a row,
# you should only have one space in the result (the result should never have consecutive spaces)


#input: a string with words and alphanumeric characters
# output: a string without any alphanumeric characters
def cleanup(string)
  clean_string = string.gsub(/[^0-9a-z ]/i, '')
  clean_string.split(' ').map { |word| word.strip }.join(' ')
end

puts cleanup("---what's my +*& line?")
puts cleanup("---what's  -my +*&----   line?")
