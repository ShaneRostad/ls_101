puts "What is the annual percentage Rate on the loan?"
apr = gets.chomp.to_f
apr_new = apr / 100

mpr = apr_new / 12

puts mpr

puts "What is the duration of your loan in months? ___ months"
loan_duration_months = gets.chomp.to_i
puts loan_duration_months
