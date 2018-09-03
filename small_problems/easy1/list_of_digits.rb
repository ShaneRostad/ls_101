#Input:
# - a positive integer

#output:
# - returns an array of the digits in the number

def digit_list(number)
  number.to_s.chars.map(&:to_i)
end

p digit_list(1231235)

# => [1, 2, 3, 1, 2, 3, 5]
