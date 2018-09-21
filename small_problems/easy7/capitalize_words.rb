#input:
# - a single String argument

#output:
# - a new string, containing the original value of the argument
# - but, with the first character of every word capitalized.

# steps:
# 1 - define a method word_cap that takes param `string`
# 2 - split this string into an array of strings using .split(' ')
# 3 - call .map do |str|

def word_cap(string)
  capitalized_array = string.split(' ').map do |str|
    str.capitalize
  end
  capitalized_array.join(' ')
end

p word_cap('four score and seven')
p word_cap('four score and seven')# == 'Four Score And Seven'
p word_cap('the javaScript language')# == 'The Javascript Language'
puts word_cap('this is a "quoted" word') #== 'This Is A "quoted" Word'
