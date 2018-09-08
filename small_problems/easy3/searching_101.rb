#write a program that solicits 6 numbers from the user
#then prints a message that describes whether or not
# the 6th number appears amongst the first 5 numbers.

#input:
# - 6 integers

#output:
# a string, that describes whether or not the 6th number appears amongst the first 5 numbers.
number_list = []

puts "Enter the 1st number:"
number1 = gets.chomp

puts "Enter the 2nd number:"
number2 = gets.chomp

puts "Enter the 3rd number:"
number3 = gets.chomp

puts "Enter the 4th number:"
number4 = gets.chomp

puts "Enter the 5th number:"
number5 = gets.chomp

puts "Enter the last number:"
last_number = gets.chomp

number_list << number1 << number2 << number3 << number4 << number5

if number_list.include?(last_number)
  puts "The number #{last_number} appears in #{number_list}"
else
  puts "The number #{last_number} does not appear in #{number_list}"
end
