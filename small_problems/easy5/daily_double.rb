# write a method that
# takes a string as an argument
# and returns a new string that contains the value of the
# original string with all consecutive duplicate characters collapsed into a
# single character. You may not use String#squeeze or String#squeeze!


#examples:

# crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# crunch('4444abcabccba') == '4abcabcba'
# crunch('ggggggggggggggg') == 'g'
# crunch('a') == 'a'
# 2[crunch('') == ''


#steps
# 1 - define a method that takes a string as an argument
# 2 - split that string into an array of words
# 3 - iterate through the characters of each word
# 4 - -


def crunch(string)
  new_string = string.split(' ')
  index = 0
  crunch_text = ''

  while index <= string.length - 1
    crunch_text << string[index] unless string[index] == string[index + 1]
    index += 1
  end
  crunch_text
end

p crunch('ddaaiillyy ddoouubbllee')
