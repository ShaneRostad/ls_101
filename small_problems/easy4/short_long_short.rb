# input:
# - two strings as arguments

#computation:
# - Determines the longest of the two strings

#output:
# - returns the result of concatenating the shorter string, longer string, and shorter string once again.

def short_long_short(string1, string2)
  if string1.length > string2.length
    long_string = string1
    short_string = string2
  else
    long_string = string2
    short_string = string1
  end

  short_string + long_string + short_string

end

puts short_long_short('abc', 'defgh')# == "abcdefghabc"
puts short_long_short('abcde', 'fgh')# == "fghabcdefgh"
puts short_long_short('', 'xyz')# == "xyz"
