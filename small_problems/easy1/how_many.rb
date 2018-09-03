# Write a method that counts the number of cocurences of each element in a given array.

#Input:
# an array

#output:
# A hash containing the word as the key, and the # of times as a value.

# Loop through each element in the array and create a hash for each unique word
# Loop through each element in the array and count how many times each word is seen



def count_occurences(array)
  occurences = Hash.new(0)

  array.each { |name| occurences[name] += 1 }
  puts occurences

end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurences(vehicles)
