# input:
# - two integers

# output:
# - an array

def fizzbuzz(num_1, num_2)
  array = (num_1..num_2).to_a

  array.map! do |num|
      if num % 3 == 0 && num % 5 == 0
        "FizzBuzz"
      elsif num % 3 == 0
        "Fizz"
      elsif num % 5 == 0
        "Buzz"
      else
        num
      end
  end
  array.join(', ')
end

p fizzbuzz(1, 15)
