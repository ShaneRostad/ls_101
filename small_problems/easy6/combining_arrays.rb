# 1 - accept two arrays as arguments
# 2 -

def merge(array1, array2)
  final_array = []
  array1.size.times { final_array << array1.shift}
  array2.size.times { final_array << array2.shift}

  final_array.uniq!

end




p merge([1, 3, 5], [3, 6, 9]) #=> [1, 3, 4, 6, 9]
