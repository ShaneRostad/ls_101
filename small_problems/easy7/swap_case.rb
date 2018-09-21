#input:
# - takes a String
#output:
# - returns a new string in which
# - every uppercase letter is replaced by its lowercase version
# - and every lowercase letter is replaced by its uppercase version

#exceptions:
# - may not use String#swapcase

# steps:
# 1 - establish two constants
# - - LOWERCASE_LETTERS =
# - - UPPERCASE_LETTERS =
# 2 - define a method that takes a String (string)
# 3 - set array_of_chars = string.split('')
# 4 -


LOWERCASE_LETTERS = ('a'..'z').to_a
UPPERCASE_LETTERS = ('A'..'Z').to_a

def swapcase(string)
  array_of_chars = string.split('').map do |chr|
    if LOWERCASE_LETTERS.include?(chr)
      chr.upcase
    elsif UPPERCASE_LETTERS.include?(chr)
      chr.downcase
    else
      chr
    end
  end
  array_of_chars.join('')
end


p swapcase('CamelCase')# == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV')# == 'tONIGHT ON xyz-tv'
