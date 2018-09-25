# input:
# - a string argument

# output:
# - a new string that contains the value of the original string with all consecutive duplicate chars collapsed into a single character.

# rules:
# - can not use #squeeze

# steps:
# 1 - iterate through the string's characters
# 2 - add unique characters to a new string
# - - - if str[idx] == str[idx + 1]
# 3 - return the new string


def crunch(string)
  result = ''

  string.chars.each_with_index do |chr, idx|
    result << chr if string[idx] != string[idx + 1]
  end
  result
end


p crunch('ddaaiillyy ddoouubbllee')
p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
