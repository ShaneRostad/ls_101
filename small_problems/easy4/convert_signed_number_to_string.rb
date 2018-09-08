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

def signed_integer_to_string(number)
  case number <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when 1 then "+#{integer_to_string(number)}"
  else          integer_to_string(number)
  end
end

def integer_to_string(number)
  chars = number.digits.map {|num| DIGITS[num]}
  chars.reverse.join
end

p signed_integer_to_string(+4321)
p signed_integer_to_string(0)
p signed_integer_to_string(-5000)
