# input:
# - an array of strings

# output:
# - the number of occurences of each string


def count_occurences(array)
  count = {}

  array.each do |vehicle|
    if count.keys.include?(vehicle)
      count[vehicle] += 1
    else
      count[vehicle] = 0
    end
  end
  count
end


vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

puts count_occurences(vehicles)
