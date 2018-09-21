


def reverse!(list)
  holder = []
  counter = 1
  size = list.size
  loop do
    break if counter == (-size)
    holder << list[-counter]
    counter -= 1
  end

  counter = 0
  list.delete_if { true }
  loop do
    break if counter == size
    list << holder[counter]
    counter += 1
  end
  list
end

list = %w(a b c d e)
p list
result = reverse!(list)
p result
p list.object_id
p result.object_id
