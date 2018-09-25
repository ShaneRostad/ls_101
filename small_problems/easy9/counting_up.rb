# input:
# - an integer

# output:
# - an Array of all integers, in sequence, between 1 and the argument
def sequence(integer)
  1.upto(integer).to_a
end

p sequence(5)
p sequence(3)
p sequence(-1)
