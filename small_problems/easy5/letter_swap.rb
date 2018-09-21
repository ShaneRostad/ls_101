# given a string of words seperated by spaces, write a method that takes
# this string of words, and returns a string in which the first
# and last letters of every word is swapped

# assume every word contains at least one letter, and string.size > 0
# assume nothing but words and spaces

#so basically...
# take a string,
# split it into an array of seperate words
# iterate through the array and for each string
# placeholder = string[0]
# string[0] = string.pop
# string << placeholder
#
# then join the array back together with a space

=begin
def swap(string)
  working_array = string.split(' ').map do |word|
      word.each do |wrd|

      end
        placeholder = word[0]
        word[0] = word.chop
        word << placeholder
      end

  end
  working_array.join(' ')
end

puts swap('Oh what a wonderful day it is')
=end
=begin
string = 'oh what a wonderful'
working_array = string.split(' ').map do |word|
    split_word = word.split('')
    placeholder = split_word.first
    split_word[0] = split_word.last
    split_word.last
    word = split_word.join('')
    end
=end
def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(words)
  result = words.split.map do |word|
    swap_first_last_characters(word)
  end
  result.join(' ')
end
