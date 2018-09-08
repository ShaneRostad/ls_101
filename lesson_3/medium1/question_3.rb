def factors(number)
  dividend = number
  divisors = []
  if number > 0
    begin
      divisors << number / dividend if number % dividend == 0
      dividend -= 1
    end until dividend == 0
  else
    puts "That's either a zero or a negative number. Try again!"
  end
    divisors
end



puts factors(56)
