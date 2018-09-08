#write a program that asks the user to enter an integer greater than 0
# then asks if the user wants to determine the sum or product of all numbers
# between 1 and the entered integer


#input:
# - integer greater than 0
# - either sum or product modifier

#output:
# - sum of all numbers between 1 and the entered integer
# - product of all numbers between 1 and the entered integer



# examples:
=begin
>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.
=end

# Write a program that asks the user to enter an integer greater than 0,
# then asks if the user wants to determine the sum or product
# of all numbers between 1 and the entered integer.


puts "Please enter an integer greater than 0: "
number = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
modifier = gets.chomp

arr = (1..number).to_a
counter = 0
sum = 0
product = 1

if modifier == 's'
  loop do
      break if counter > arr.size
      sum += arr[counter].to_i

      counter += 1
    end

  puts "The sum of the integers between 1 and #{number} is #{sum}"

elsif modifier == 'p'
  loop do
    break if counter >= arr.size

    product *= arr[counter].to_i

    counter += 1
  end
puts "The product of the integers between 1 and #{number} is #{product}"

else
  puts "please enter s or p"
end
