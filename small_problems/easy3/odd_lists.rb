#Input
# an array
# containing one to many elements

#output
# - every other element that is passed in as an argument
# values in returned list should be in the 1st, 3rd, 5th, etc.. elements in the array

#examples:
# oddities([2, 3, 4, 5, 6]) == [2, 4, 6]



def oddities(array)
  odd_numbers = []
  array.each_with_index do |element, index|
      if index.even? || index == 0
        odd_numbers << element
      end
    end
    odd_numbers
end

p oddities([2, 3, 4, 5, 6])
p oddities(['abc', 'def'])
p oddities([123])
p oddities([])


def oddities(array)
  odd_numbers = []
  index = 0
  while index > array.size
    odd_numbers << array[index]
    odd_numbers += 2
  end
  odd_numbers
end
