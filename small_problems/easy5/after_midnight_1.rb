#Time of day can be represented as the number of minutes before or after midnight
# if number of minuts is postiive, time is after midnight
# if number of minuts is negative, time is before midnight

# write a method that takes a time using minute-based format
# and returns the time of day in 24 hour format (hh:mm)
# method should work with any integer input
# may not use Ruby's Date and Time classes

#examples:

#time_of_day(0) == "00:00"
#time_of_day(-3) == "23:57"
#time_of_day(35) == "00:35"
#time_of_day(-1437) == "00:03"
#time_of_day(3000) == "02:00"
#time_of_day(800) == "13:20"
#time_of_day(-4231) == "01:29"

#what Im thinking:
# create two variables for hour and time
# manipulate one or more of those variables depending on:
# - the size of the input
# - whether the input is positive or negative

# there are 1440 minutes in a day,


#what if we did

#steps:
# 1 - define a method time_of_day that takes an integer value
# 2 - set a variable minute == 60
# 2 - set a variable 'hour' = 24
# 3 ----
# 4 - establish if conditionals for:
# 5 - - if integer < 0 do subtract time from hour
# 5         if hour < 0 add 2400
# 6 - - elsif integer > 0 do add time to hour
# 6 - -   if hour > 2400 subtract 2400
# 7 - - else hour = 0 and minute = 0
require "pry"

def positive_to_hours(int)
  minute = 0
  hour = 0
  final_time = []

  hour_subtractor = int / 60
  minute_subtractor = int % 60

  minute += minute_subtractor
  hour += hour_subtractor


  final_time << hour.to_s
  final_time << minute.to_s

  if final_time[0].to_i < 10
    final_time[0].prepend('0')
  end

  if final_time[1].to_i < 10
    final_time[1].prepend('0')
  end

  final_time.join(':')
end

def time_of_day(integer)
  minute = 0
  hour = 0
  final_time = []

  if integer > 0
    if integer > 1440
      until integer < 1440
        integer -= 1440
      end
      return positive_to_hours(integer)

    elsif integer <= 1440
      return positive_to_hours(integer)
    end

  elsif integer < 0
    if integer < -1440
      until integer > -1440
        integer += 1440
      end
      integer += 1440
      return positive_to_hours(integer)

    elsif integer > -1440
      integer += 1440
      return positive_to_hours(integer)
    end
  else
    return "00:00"
  end
  final_time
end

p time_of_day(0)
p time_of_day(-3)
p time_of_day(35)
p time_of_day(-1437)
p time_of_day(3000)
p time_of_day(800)
p time_of_day(-4231)
=begin
hour_subtractor = 400 / 60
minute_subtractor = 400 % 60

puts 400 % 60
puts 400 / 60

puts 30 % 60
puts 30 / 60
=end
