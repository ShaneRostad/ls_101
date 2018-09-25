#write a method that takes a non-empty string and returns the middle character

#input:
# - a String

#output:
# - the middle character

# conditions:
# - if the string is even, take the middle 2 characters.

# measure string.length
# use [string.length/2] to get the halfway point
# if halfway_point.odd? take it
# elsif halfway_point.even, take [halfway_point, 1]



def center_of(string)
  halfway_point = string.length / 2
  if string.length.even?
    string[halfway_point - 1, 2]
  elsif string.length.odd?
    string[(halfway_point)]
  else
  end

end

p center_of('I love ruby') # 11
p center_of('Launch School') # 13
p center_of('Launch') # 6
p center_of('Launchschool')
