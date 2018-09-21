#Modify the word_sizes method from the previous exercise to include
# non-letters when determining word size
# for instance, the length of 'it's' is 3, not 4.


def word_sizes(string)
  word_count = {}
  string.squeeze!(' ')
  string.gsub(/[^0-9a-z ]/i, '').split(' ').map do |word|
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
p word_sizes("What's up doc?")
