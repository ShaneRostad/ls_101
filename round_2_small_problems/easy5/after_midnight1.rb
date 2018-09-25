# input:
# - an integer, the number of minute before or after midnight

# output:
# - returns a time of day in 24 hour format.

# assumptions:
# - disregard daylight savings time

# info:
# 1440 minutes in a day
# minutes / 60 = hours
# if minutes > 1440, subtract 1440
# minutes % 60 = minutes

# steps:
# 1 - define a method time_of_day(integer)
# 2 - until integer < 1440 integer - 1440
# 2 - initialize hours = integer / 60
# 3 - initialize minutes = integer % 60
# 4 -

def time_of_day(integer)
  until integer < 1440
    integer -= 1440
  end

  until integer > 0
    integer += 1440
  end

  hours = integer / 60
  minutes = integer % 60

  if hours < 10 && minutes < 10
    puts "0#{hours}:#{minutes}0"
  elsif hours > 10 && minutes < 10
    puts "#{hours}:#{minutes}0"
  elsif hours < 10 && minutes > 10
    puts "0#{hours}:#{minutes}"
  else
    puts "#{hours}:#{minutes}"
  end
end

time_of_day(3000)
time_of_day(800)
time_of_day(-4231)
