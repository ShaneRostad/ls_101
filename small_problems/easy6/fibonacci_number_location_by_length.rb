# the fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21) such that
# the first 2 numbers are 1 by definition, and each subsequent number is the sum
# of the two previous numbers

#steps:
# 1 - define a method that generates a fibonacci sequence based on the given input

# 2 -


def fib_index?(num)
  arr = []
  counter = 1
  loop do
    arr = counter.times.each_with_object([0, 1]) { |number, obj| obj << obj[-2] + obj[-1] }

    if arr[counter - 1].digits.size == num
      break
    else
      counter += 1
    end

  end
  counter - 1
end

p fib_index?(100)
