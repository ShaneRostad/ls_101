#Inputs
# a positive integer

#outputs
# a string of alternating 1s and 0s, always starting with 1.
# the length of the string should match the given integer

def stringy(number, style)
  output_string = ''
  counter = 0

  if style == 1
    loop do
      counter += 1
      output_string << '1'
      break if counter >= number

      counter += 1
      output_string << '0'
      break if counter >= number
    end
  elsif style == 0
    loop do
      counter += 1
      output_string << '0'
      break if counter >= number

      counter += 1
      output_string << '1'
      break if counter >= number
    end
  end

  output_string
end


puts stringy(6, 0)
puts stringy(9, 1)
puts stringy(4, 0)
puts stringy(7, 1)

#puts stringy(6) == '101010'
#puts stringy(9) == '101010101'
#puts stringy(4) == '1010'
#puts stringy(7) == '1010101'
