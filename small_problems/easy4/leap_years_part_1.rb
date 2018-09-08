#leap years occur in every year that is evenly divisible by 4,
#unless the year is also divisible by 100
# if the year is divisible by 100, then it is not a leap year unless it's
# divisible by 400

#input:
# - any year greater than 0


#output:
# returns true if leap year
# returns false if not leap year

#steps to solve:
# 1 - define a method leap_year? that takes an integer as `year`
# 2 - if year % 4 == 0 && year % 100 != 0
# 3 - - return true
# 4 - - elsif year year % 100 == 0 && year % 100 == 0
# 5 - - return true
# 6 - - else
# 7 - - return false

def leap_year?(year)
  if year % 4 == 0 && year % 100 != 0
    true
  elsif year % 100 == 0 && year % 400 == 0
    true
  else
    false
  end
end

p leap_year?(2016)# == true
p leap_year?(2015)# == false
p leap_year?(2100)# == false
p leap_year?(2400)# == true
p leap_year?(240000)# == true
p leap_year?(240001)# == false
p leap_year?(2000)# == true
p leap_year?(1900)# == false
p leap_year?(1752)# == true
p leap_year?(1700)# == false
p leap_year?(1)# == false
p leap_year?(100)# == false
p leap_year?(400)# == true
