# input:
# - a String
# output:
# - returns a new String, that contains:
# - the original value using a staggered capitalization scheme
# - in which every oother character is capitalized

# steps:
# 1 - initialize two constants:
# - - LOWERCASE_LETTERS = []
# - - UPPERCASE_LETTERS = []
# 2 - define a method that takes a String staggered_case(str)
# 3 - str.chars.map do |chr|
# - - - if LOWERCASE_LETTERS.include? chr
# - - - - chr.upcase

def staggered_case(str)
  swapcase_chars = []
  counter = 0

  str.split('').each_with_index do |chr, idx|
    if idx.even?
      swapcase_chars << chr.upcase
    elsif idx.odd?
      swapcase_chars << chr.downcase
    else
      swapcase_chars << chr
    end
  end
  swapcase_chars.join('')
end

p staggered_case('I Love Launch School!')

# staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# staggered_case('ALL_CAPS') == 'AlL_CaPs'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
