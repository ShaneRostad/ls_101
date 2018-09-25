# input:
# - a string containing one or more words

# output:
# - returns the same string with all five or more letter words reverse

def reverse_it(string)
  new_string = string.split.each do |word|
    if word.length >= 5
      word.reverse!
    else
      word
    end
  end
  new_string.join(' ')
end

p reverse_it('Professional')
p reverse_it('Walk around the block')
