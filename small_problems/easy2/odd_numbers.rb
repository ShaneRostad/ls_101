=begin

arr = (1..99).to_a
odd_numbers = []
counter = 0
current_number = 0


loop do
  current_number = arr[counter]
  break if counter > arr.length

  if current_number % 2 == 1
    odd_numbers << current_number
  end

  counter += 1

end
p odd_numbers
=end

value = 1
while value <= 99
  puts value
  value += 2
end
