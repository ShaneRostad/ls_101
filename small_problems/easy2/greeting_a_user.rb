# a program that asks for the users name
# if the user wrtes "name!" then the computer yells back to the user


p "What is your name?"
name = gets.chomp

if name.end_with?('!')
  name = name.chop
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}"
end
