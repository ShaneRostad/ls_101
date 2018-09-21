# .mday
# .friday?
#

def generate_featured_array(num)
  featured_numbers = [0]
  counter = 1
  loop do
    number = 7 * counter
    if number.odd? && number.digits.uniq.reverse.join.to_i == number
      featured_numbers << number
      featured_numbers.shift
  #  elsif number.digits.uniq.reverse.join.to_i != number
  #    featured_numbers << number
      #featured_numbers.shift
    end
    counter += 1
    break if featured_numbers.any? { |item| item > num }
  end
  featured_numbers
end



p generate_featured_array(999_999)
