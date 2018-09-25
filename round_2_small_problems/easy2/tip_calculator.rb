puts "What is the bill?"
total = gets.chomp.to_i

puts "What is the tip percentage?"
tip_percent = gets.chomp.to_i

tip = (tip_percent.to_f / 100) * total.to_f

puts "The tip is $#{tip}"
puts "The total is #{total + tip}"
