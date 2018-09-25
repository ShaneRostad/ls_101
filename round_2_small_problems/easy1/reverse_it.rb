# input:
# - a string

# output:
# - the same string in reverse order


def reverse_sentence(string)
  new_string = []
  string.split.reverse.each do |word|
    new_string << word
  end
  new_string.join(' ')
end

puts reverse_sentence('Reverse these words')
