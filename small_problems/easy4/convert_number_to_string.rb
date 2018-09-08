# write a method that takes a positive integer or zero, and converts it to a string
# don't use the standard to_s, string(), etc...

DIGITS = {
   1 => "1",
   2 => "2",
   3 => "3",
   4 => "4",
   5 => "5",
   6 => "6",
   7 => "7",
   8 => "8",
   9 => "9",
   0 => "0",
 }

def integer_to_string(number)
  chars = number.digits.map {|num| DIGITS[num]}
  chars.reverse.join
end

p integer_to_string(4321)
p integer_to_string(0)
p integer_to_string(5000)
