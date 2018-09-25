# input:
# - an array of integers between 0 and 19

# output:
# - returns an array of those integers sorted based on english words for each number



def alphabetic_number_sort(array)
  comparison_array = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)

  array.sort_by {|number| comparison_array[number] }
end

p alphabetic_number_sort((0..19).to_a)
