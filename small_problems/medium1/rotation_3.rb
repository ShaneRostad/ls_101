# steps:
# 1 - define a method that takes an integer
# 2 - split the index into an array of digits
# 3 - take the left-most digit, and put it to the right side
# 4 - then take the second left-most digit, and put it to the right


def max_rotation(integer)
  working_array = integer.to_s.split('')
  counter = 0

  loop do
    break if counter == integer.size
    working_array << working_array[counter]
    working_array.delete_at(counter)

    counter += 1
  end
  working_array.join('').to_i
end

p max_rotation(735291)
p max_rotation(35)
p max_rotation(105)
