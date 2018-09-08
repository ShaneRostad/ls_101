#Create a simple calculator

#input:
# - Bill amount
# - Tip rate

#output:
# - calculate the tip amount
# - add tip amount to the bill amount
# - display the Tip
# - display the total amount of the bill


puts "What is the bill?"
bill_amount = gets.chomp
bill_amount = bill_amount.to_f

puts "What's the tip percentage?"
tip_rate = gets.chomp
tip_rate = tip_rate.to_f

tip_amount = (bill_amount * (tip_rate / 100)).round(3)
total_bill = (tip_amount + bill_amount).round(3)

puts "The tip is $#{tip_amount}"
puts "The total is $#{total_bill}"
