#Given a string that consists of some words and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).


# input:
# - string with some words and non-alphabetic characters

# output:
# - a string with all the non-alphabetic chars replaced by spaces

# conditions:
# - if one or more non-alphabetic characters occur in  arow, only have one space

# strip?

# steps:
# 1 - define a method cleanup(string)
# 2 - split that up
# 3 - iterate through the characters
# 4 - keep alphabetic character (another option is to delete alphabetic)
# 5 - define alphabetic character classes
# 6 use gsub to if not alphabetic, sub in a space

ALPHABETIC = ('a'..'z').to_a + ('A'..'Z').to_a
=begin
def remove_space(array)
  space_counter = 0
  new_array = []
  array.each do |chr|
    if chr == ' '
      space_counter += 1
      if space_counter <= 1
        new_array << chr
      end
    else
      new_array << chr
      space_counter = 0
    end
  end
  new_array.join
end
=end

def cleanup(string)
  working_array = string.split('').map do |chr|
    if ALPHABETIC.include? chr
      chr
    else
      ' '
    end
  end
  #p remove_space(working_array)
  working_array.join.squeeze(' ')
end




p cleanup("---what's my +*& line?")# == ' what s my line '
