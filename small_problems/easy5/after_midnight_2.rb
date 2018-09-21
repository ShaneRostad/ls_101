
#write two methods
# each take time of day in 24 hour format
# return the number of minutes before and after midnight

MINUTES_PER_HOUR = 60

hour, minute = ('12:34').split(':')

def after_midnight(time_in_hour_minute)
  total_minutes = 0
  hours, minutes = (time_in_hour_minute).split(':')
  total_minutes += ((hours.to_i * MINUTES_PER_HOUR) + minutes.to_i)

  puts total_minutes
end

def before_midnight(time_in_hour_minute)
  total_minutes = 1440
  hours, minutes = (time_in_hour_minute).split(':')
  total_minutes -= ((hours.to_i * MINUTES_PER_HOUR) + minutes.to_i)

  total_minutes = 0 if total_minutes == 1440

  puts total_minutes
end

after_midnight('00:00')
before_midnight('00:00')
after_midnight('12:34')
before_midnight('12:34')
