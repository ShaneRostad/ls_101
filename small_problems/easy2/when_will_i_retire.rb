#Build a program that displays when the user will retire
# also how many years she has to work till retirement

#input:
# - current age
# - desired retirement age

# output
# - it is current_year, you will retire in current_year + (retirement_age - age)
# - You only have __ years of work to go

current_year = Time.now.year

puts "What is your age?"
current_age = gets.to_i

puts "At what age would you like to retire?"
retirement_age = gets.to_i

remaining_years = (retirement_age - current_age)
retirement_year = (current_year + remaining_years)

puts "It's #{current_year.to_s}. You will retire in #{retirement_year.to_s}"
puts "You only have #{remaining_years.to_s} years of work to go!"
