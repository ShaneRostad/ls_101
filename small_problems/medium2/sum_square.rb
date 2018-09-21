# input:
# - an integer

# output:
# - the difference between the square of the sum of the first n positive integers and the sum of the squares of the first `n` positive integers.

# sum_square_difference(3)
# - > (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)




def sum_square_difference(n)
  sum2 = 0
  sum1 = (1..n).inject(:+)**2
  (1..n).each {|num| sum2 += num**2 }

  sum1 - sum2

end

p sum_square_difference(10)
