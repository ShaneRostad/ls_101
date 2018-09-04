# takes one argument, a positive integer, and returns the sum of its digits

#input: a positive integer

#output: the sum of its digits

#1 - accept an integer as an argument
#2 - split the integer into its characters
#4 - join the integer using #reduce


def sum(integer)
  sum = 0
  parts = integer.to_s.each_char do |part|
                                        sum += part.to_i
                                      end
  sum
end

puts sum(23)
puts sum(496)
puts sum(123_456_789)
