# input:
# - two Array arguments in which each Array contains a list of numbers

# output:
# - a new Array that contains the product of every
# - pair of numbers that can be formed between the elements of the two arrays
# - Results should be sorted by increasing value

# assume:
# - neither argument is empty

# steps
# 1 - define a method that takes two arrays
# 2 - iterate through array_1, and for each number, multiply it by each element in array_2.

def multiply_all_pairs(array_1, array_2)
  products = []

  array_1.each do |num|
    counter = 0

    loop do
      products << num * array_2[counter]
      counter += 1
      break if counter == array_2.size
    end
  end

  products.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2])# == [2, 4, 4, 6, 8, 8, 12, 16]
