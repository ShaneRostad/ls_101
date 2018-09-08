#write a method that takes a year as input and returns a century
# the return value should be a string that begins with the century number,
# and ends with st, nd, rd, or th as appropriate for that number.

#new centuries begin in years that end with 01. So years 1901-2000 comprise the 20th century.

#input:
# - an integer

#output:
# a string
# - begins with the century number
# - ends with st, nd, rd, or th.

def century(integer)
    century = (integer / 100) + 1
    century -= 1 if century % 100 == 0
    century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

    case last_digit
    when 1 then 'st'
    when 2 then 'nd'
    when 3 then 'rd'
    else 'th'
    end
end


#examples:
  #century(2000) == '20th'
  #century(2001) == '21st'
  #century(1965) == '20th'
  #century(256) == '3rd'
  #century(5) == '1st'
  #century(10103) == '102nd'
  #century(1052) == '11th'
  #century(1127) == '12th'
  #century(11201) == '113th'

#Steps:
#1 - define a method that takes an integer
#2 - convert that integer into a string
#3 - create a reference table for century dates and endings
#4 - if input is == a number within the specified range,
#     - set century_num = range value
#  - if century_num ends_with number, pull the corresponding ending
# - append the corresponding ending to the century_num value
# puts the century_num value




p century(150)
