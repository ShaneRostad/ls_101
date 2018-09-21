# a method named include?

#input: an Array and a search value

#output: true, if the search value is in the array
# - - -  false, if the search value is not in the array

#steps:
# 1 - define a method that takes two parameters (array, search_val)
# 2 - define a counter = 0
# - - loop through the array using array[counter]
# - - if array[counter] == search_val
# - - return true
# - - else array[counter] != search_val
# - - counter += 1
# - - return false if counter > array.size
# - - end


def include?(array, search_val)
  counter = 0
  loop do
    if array[counter] == search_val
      return true
    else
      return false if counter > array.size
      counter += 1
    end
  end
end

p include?([1,2,3,4,5], 3)
p include?([1,2,3,4,5], 6)
