#Inputs:
# a string containing one or more words

#outputs:
# given string with:
# - words with less than 5 letters the same
# - words with five or more letters reversed

# notable:
# Each string will consist of only letters and spaces
# Spaces should be included only when more than one word is present

#steps:
#1 - take a string as an argument
#2 - split that string into an array of words seperated by spaces
#3 - check each word to see if it's >= 5 characters in length
#4 - if it's >= 5 chars, reverse each character in the string
#5    - if it's < 5 chars, leave it alone
#6 join all of the words together again

  # first attempt def reverse_words(string)
                  # string.split(" ").each do |word|
                  #    if word.length >= 5
                  #      word.reverse
                  #    else
                  #    end
                  #    string.join('')
                  #  end
                  # end


def reverse_words(string)
  words = []

  string.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(' ')
end
#examples:

puts reverse_words('Professional')   # => lanoisseforP
puts reverse_words('Walk around the block')   # => Walk dnuora the kcolb
puts reverse_words('Launch School')           # => hcnuaL loohcS
