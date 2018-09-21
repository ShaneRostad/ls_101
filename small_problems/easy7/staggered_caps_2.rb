ALPHABETIC = (('a'..'z').to_a + ('A'..'Z').to_a)

def staggered_case(str)
  swapcase_chars = []
  counter = 0

  array = str.split('')

    array.map do |chr|

    if counter.even? && ALPHABETIC.include?(chr)
      swapcase_chars << chr.upcase
      counter += 1
    elsif counter.odd? && ALPHABETIC.include?(chr)
      swapcase_chars << chr.downcase
      counter += 1
    else
      swapcase_chars << chr
    end
  end
  swapcase_chars.join('')
end

p staggered_case('I Love Launch School!')
p staggered_case('ignore 77 the 444 numbers')
