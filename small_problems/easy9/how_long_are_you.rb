# input:
# - a String

# output:
# - an Array containing every word from the string
# - to which we have appended a space and the word length


# steps:
# 1 - define method word_lengths(string)
# 2 - split the string into an array of strings (' ')
# 3 - iterate through that collection using .map |str| to transform
# 4 - str << " #{string.length}"



def word_lengths(string)
  array = string.split(' ')

  array.map! do |str|
    str << " #{str.length}"
  end

  array
end


p word_lengths("cow sheep chicken")
p word_lengths("baseball hot dogs and apple pie")
p word_lengths("It ain't easy, is it?")
p word_lengths("Supercalifragilisticexpialidocious")
p word_lengths("")
