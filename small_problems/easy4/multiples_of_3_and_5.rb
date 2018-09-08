# a method that searches for all multiples of 3 or 5 that
# lie between 1 and some other number, and then computes the sum of those multiples
# #for instance, if the supplied number is 20, the result should be 98 (3+5+6+9+10+12+15+18+20).
#assume integer passed is > 1

#input:
# - an integer


# output:
# - the sum of all multiples of 3 or 5 that lie between 1 and input

# Steps:
# 1 - define a method multisum(input) that takes an integer as an argument
# 2 - create a range from 1..input
# 4 - within that range, select values if value % 3 = 0 set equal to multiples_3
# 5 - within that range, select values if value % 5 = 0 set equal to multiples_5
#6 - add all numbers from multiples_3 and multiples_5


def multisum(input)
  multiples_3 = []
  multiples_5 = []

  range = (1..input.to_i).to_a

  range.select do |number|
    if number % 3 == 0
      multiples_3 << number
    end
  end

  range.select do |number|
    if number % 5 == 0
        multiples_5 << number
    end
  end

  multiples_3.delete_if { |number| multiples_5.include?(number) }

  answer = multiples_5.sum + multiples_3.sum
  answer
end

puts multisum(20)
puts multisum(3)# == 3
puts multisum(5)# == 8
puts multisum(10)# == 33
puts multisum(1000)# == 234168


#OPTIONAL OTHER SOLUTION

=begin
def method(number)
numbers = []
  (1..number).select do |num|
    if num % 3 == 0 || num % 5 == 0
      numbers << num
    else
    end
  end
  numbers.sum
end


puts method(20)
=end
