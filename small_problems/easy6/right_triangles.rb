=begin
Write a method that takes a positive integer, `n`, as an argum,ent, and displays a right triangle whose sides each have `n` starts. The hypotenuse of the triangle should have one end at the lower left of the triangle, and the other end at the upper-right

input: a positive integer `n`
output: n.times puts a string of stars
=end

# steps -
# 1 - define a method which takes an integer `n`
# 2 - create an array strings, each with a certain number of spaces and *'s.
# - - We want the same number of strings as `n`
# 3 - We want to add a certain # of *'s based on `n`
# - -
# - - push these strings in to an array
# 4 - print each of these strings
# - - array.each { |str| puts str}


def triangle(n)
  star_array = []
  n.times do
    star_array << ""
  end
    star_counter = n # n
    space_counter = 0
    counter = 0

    loop do
      (space_counter).times { star_array[counter] << ' ' }
      (star_counter).times { star_array[counter] << '*' }



      star_counter -= 1
      space_counter += 1
      counter += 1
      break if counter == n
    end
    star_array
end


# star_array[0] << "    *"
# star_array[1] << "   **"
# star_array[2] << "  ***"
# star_arrat[3] << " ****"
# star_array[4] << "*****"

puts triangle(9)
# = >
# *
#**
#puts " *"
#puts "**"



=begin
Example:

triangle(5)

    *
   **
  ***
 ****
*****

=end
