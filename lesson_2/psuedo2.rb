#2 a method that takes an array of strings, and returns a string that is all those strings concatenated together

def combine(array)
  new_string = array.join
  p new_string
end

array1 = ["john", "adam", "sally"]

combine(array1)
