# ask for length and width in meters
# display area in both square meters and square feet

puts "please enter the length of the room in meters: "
length = gets.chomp.to_i

puts "please enter the width of the room in meters:"
width = gets.chomp.to_i

area_meters = length * width

area_sq_feet = area_meters * 10.7639

puts "the area of the room is #{area_meters} square meters(#{area_sq_feet.round(2)} square feet)"
