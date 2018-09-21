#write a method displays a 4 pointed diamand in an n x n grid, where `n` is an odd integer that is supplied as na argument to the method.

# input:
# - an odd integer

# output:
# - a 4-pointed diamond in an n x n grid, where `n` is an odd integer

# we have to put something to the screen n times. Now, what that something is each time, depends on n. How can we put something to the screen `n` times? We can either create a loop and use a counter.. that counter would go up until 9 and then break the loop
# or we can use 9.times


def diamond(n)

  counter = n
  star_counter = 1

  loop do
    break if counter < 0
    p "#{' ' * ((counter / 2))} #{'*' * star_counter }"
    counter -= 2
    star_counter += 2
  end

  counter = 1
  star_counter = n - 2
  loop do
    break if star_counter < 0
    p "#{' ' * counter} #{'*' * star_counter }"
    counter += 1
    star_counter -= 2
  end

end

diamond(12)
