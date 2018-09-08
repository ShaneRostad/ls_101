#build a program that randomly generates and prints Teddy's age.
# number between 20 and 200

#Input:
# - no input

#Output:
# A string "Teddy is #{random number} years old!"
puts "Enter a name, and I will guess their age!"
name = gets.chomp.capitalize!

if name == '' || name == ' ' || name == nil
  age = rand(20..200)
  puts "Teddy is #{age} years old!"
else
  age = rand(20..200)
  puts "#{name} is #{age} years old!"
end
