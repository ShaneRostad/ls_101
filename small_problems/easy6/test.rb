DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE


total_seconds = (76.73 * SECONDS_PER_DEGREE).round
degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
#3600 * .73


total_seconds = (76.73 * 3600).round
degrees = total_seconds / 3600
remaining_seconds = total_seconds % 3600
minutes = remaining_seconds / 60
seconds = remaining_seconds % 60
