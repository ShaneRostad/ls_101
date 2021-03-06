#write a method that takes a floating point number,
# that represents an angle between 0 and 360 degrees
# and returns a string that represents that angle in
# degrees, minutes, and seconds.

# you should use a degree symbol to represent degrees
# a single quote to represent minutes,
# and a double quote to represent seconds
# A degree has 60 minutes, while a minute has 60 seconds.

# input:
# an integer

# output:
# a string that represents the angle in degrees, minutes, seconds

# steps to solve:
# 1 - define a method that takes a float
# 2 - solve for degrees, minutes, seconds
# 3 - format('%02dDEGREE%02d'%02d", degrees, minutes, seconds)

#examples:
# dms(30) == %(30°00'00")
# dms(76.73) == %(76°43'48")
# dms(254.6) == %(254°36'00")
# dms(93.034773) == %(93°02'05")
# dms(0) == %(0°00'00")
# dms(360) == %(360°00'00") || dms(360) == %(0°00'00")


MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

DEGREE = "\xC2\xB0" # the degree symbol

def dms(degrees_float)
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round #4603.8
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE) # 
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)


end

dms(76.73)
