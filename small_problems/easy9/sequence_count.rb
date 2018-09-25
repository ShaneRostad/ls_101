# input:
# - two Integers
# - - first is a count
# - - second is the first number of a sequence your method will create

# output:
# - return an Array that contains the same number of elements as count
# - while the values of each element will be multiples of the starting number

# steps:
# 1 - define a method sequence(count, start)
# 2 - initialize an empty array final_sequence = []
# 3 - generate the sequence
# - - - open a loop


def sequence(count, start)
  final_sequence = []
  counter = 1
  loop do
    break if count == 0

    final_sequence << (start * counter)
    counter += 1
    break if counter > count
  end
  final_sequence
end


p sequence(5, 1)
p sequence(4, -7)
p sequence(3, 0)
p sequence(0, 10000000)

# sequence(5, 1) == [1, 2, 3, 4, 5]
