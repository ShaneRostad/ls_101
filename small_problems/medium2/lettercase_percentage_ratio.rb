# input:
# - a string of varying characters

#output:
# a hash containing 3 key-value pairs
# - lowercase: 0
# - uppercase: 0
# - neither: 0


# steps:
# 1 - Initialize a couple class variables
# - - UPPERCASE_LETTERS = ('a'..'z').to_a
# - - LOWERCASE_LETTERS = ('A'..'Z').to_a
# 2 - define a method letter_percentages(string)
# 3 - initialize our Hash using percentages = {lowercase: 0, uppercase: 0, neither: 0}
# - - initialize a local variable lower = 0
# - - initialize a local variable upper = 0
# - - initialize a local variable neither = 0
# 4 - split our string into an array of chars
# 5 - iterate through the array of characters using each |chr|
# - - - if LOWERCASE_LETTERS.include? chr
# - - - - lower_count += 1
# - - - elsif UPPERCASE_LETTERS


LOWERCASE_LETTERS = ('a'..'z').to_a
UPPERCASE_LETTERS = ('A'..'Z').to_a




def letter_percentages(string)
  percentages = {lowercase: 0.00, uppercase: 0.00, neither: 0.00}
  lower_count = 0.00
  upper_count = 0.00
  neither_count = 0.00
  size = string.size

  string.each_char do |chr|
    if LOWERCASE_LETTERS.include? chr
      lower_count += 1
    elsif UPPERCASE_LETTERS.include? chr
      upper_count += 1
    else
      neither_count += 1
    end
  end

  percentages[:lowercase] = ((lower_count / size) * 100)
  percentages[:uppercase] = ((upper_count / size) * 100)
  percentages[:neither] = ((neither_count / size) * 100)

  percentages
end

p letter_percentages('abCdef 123')
p letter_percentages('AbCd +Ef')
#letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
