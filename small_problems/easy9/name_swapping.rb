# input:
# - single string in the form of a first name, a space, and a last name

# output:
# - return a string that contains the last name, a comma, a space, and the first name

# steps
# 1 - split the string at the space using string.split(' ')
# 2 - then, call map on the string, and pass each |str| into an interpolated string

def swap_name(string)
  first_name, last_name = string.split(' ')
  puts "#{last_name}, #{first_name}"

end


swap_name('Joe Roberts')# == 'Roberts, Joe'
