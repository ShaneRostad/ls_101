# input:
# - an array of nested arrays
# output:
# - an array of the correct number of each fruit

# steps:
# 1 - define a method buy_fruit(array)
# 2 - initialize an empty array grocery_list = []
# 3 - loop through the array


def buy_fruit(array)
  grocery_list = []

  array.each do |arr|
    arr[1].times do grocery_list << arr[0]
    end
  end

  grocery_list
end







p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])
