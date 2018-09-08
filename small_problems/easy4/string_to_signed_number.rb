DIGITS = {
   '1' => 1,
   '2' => 2,
   '3' => 3,
   '4' => 4,
   '5' => 5,
   '6' => 6,
   '7' => 7,
   '8' => 8,
   '9' => 9,
   '0' => 0,
 }

def string_to_signed_integer(string)
   if string[0] == '-'
     -string_to_integer(string[1..-1])
   elsif string[0] == '+'
     string_to_integer(string[1..-1])
   else
     string_to_integer(string)
   end
end

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

puts string_to_signed_integer('4321')
puts string_to_signed_integer('-152345')
puts string_to_signed_integer('-550')
puts string_to_signed_integer('+520')
