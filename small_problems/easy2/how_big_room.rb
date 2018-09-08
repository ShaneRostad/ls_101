
#input:
# - Length of a room in meters
# - width of a room in meters

#output:
# - area of the room in square meters
# - area of the room in square feet

#steps:
# 1 - prompt the user to enter the length in meters and save it to `length`
# 2 - prompt the user to enter the width in meters and save it to `width`
# 3 - Create a method that multiplies the two together and save it to 'Area_in_meters'
# 4 - Create a method that takes 'Area_in_meters' and multiplies it by 10.7639 and save it to 'Area_in_feet'

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters"
width = gets.chomp.to_f

area_in_meters = length * width
area_in_feet = area_in_meters * 10.7639

puts "The area of the room is #{area_in_meters} square meters (#{area_in_feet} square feet)."



#example:
  #Enter the length of the room in meters:
  #10
  #Enter the width of the room in meters:
  #7
  #The area of the room is 70.0 square meters (753.47 square feet).
