#fibonacci sequence:

# this is a recursive method:
#def sum(n)
#  return 1 if n == 1
#  n + sum(n - 1)
#end

# - this method calls itsself at least once
# - it has a condition that stops the recursion (n == 1 ^^^)
# - it uses the result returned by itsself


# F(n) = F(n - 1) + F(n + 2) where n > 2

# examples:
# fibonacci(1) == 1
# fibonacci(3) == 2
=begin
counter = 3
arr = counter.times.each_with_object([0, 1]) { |number, obj| obj << obj[-2] + obj[-1] }
p arr
=end

def fibonacci(n)
  return 1 if n <= 2

  fibonacci(n - 1) + fibonacci(n - 2)

end
p fibonacci(3)



def sum(n)
  n + sum(n - 1)
end

sum(5) # 5 - (5 + (4 + (3 + (2 + (1)))))
