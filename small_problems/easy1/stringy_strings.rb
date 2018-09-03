#Inputs
# a positive integer

#outputs
# a string of alternating 1s and 0s, always starting with 1.
# the length of the string should match the given integer

def stringy(number)
  output_string = ''
  counter = 0
  loop do
    counter += 2
    output_string
    break if counter > number

    puts 0
    break if counter > number
  end
end


p stringy(6) == '101010'

#puts stringy(6) == '101010'
#puts stringy(9) == '101010101'
#puts stringy(4) == '1010'
#puts stringy(7) == '1010101'
