# write a method that takes a string with one or more space
# and returns a hash that shows the number of words of different sizes


# examples:
# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# word_sizes('') == {}


#steps:
# 1 - def a method that takes a string of words
# 2 - call squeeze(' ') on that string
# 3 - split that string into an array split(' ')
# 4 - set a variable = strng.size
# 5 - - [string.size] += 1
# 6


def word_sizes(string)
  word_count = {}
  string.squeeze!(' ')
  string.split(' ').map do |word|
    if word_count.has_key?(word.size)
      word_count[word.size] += 1
    else
    word_count[word.size] = 1
  end
end
word_count
end

p word_sizes('Four score and seven.')
p word_sizes('Hey diddle diddle, the cat and the fiddle!')
