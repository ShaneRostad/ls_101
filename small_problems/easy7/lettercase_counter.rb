# input:
# - a string

# output:
# a hash that contains 3 entries:
# - one represents the number of chars in the string that are lowercase
# - one represents the number of chars that are uppercase
# - one represents the number of chars that are neither

# steps
# - 1 initialize an array LOWERCASE_LETTERS (a..z).to_a
# - 2 initialize an array UPPERCASE_LETTERS (A..Z).to_a
# - 3 define a method that takes a string parameter `str`
# - 4 initialize a hash with lowercase: 0, uppercase: 0, neither: 0
# - 5 iterate over the string using .each_char assigning each char to chr


LOWERCASE_LETTERS = ('a'..'z').to_a
UPPERCASE_LETTERS = ('A'..'Z').to_a

def letter_case_count(str)
  returned_hash = {lowercase: 0, uppercase: 0, neither: 0}

  str.each_char do |chr|
    if LOWERCASE_LETTERS.include?(chr)
      returned_hash[:lowercase] += 1
    elsif UPPERCASE_LETTERS.include?(chr)
      returned_hash[:uppercase] += 1
    else
      returned_hash[:neither] += 1
    end
  end

  returned_hash
end

p letter_case_count('abCdef 123')

p letter_case_count('abCdef 123')# == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef')# == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123')# == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('')# == { lowercase: 0, uppercase: 0, neither: 0 }
