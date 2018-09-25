def after_midnight(string)
  hours, minutes = string.split(':')
  output = (hours.to_i * 60) + minutes.to_i
  return 0 if output == 1440
  output
end

def before_midnight(string)
  hours, minutes = string.split(':')
  output = 1440 - ((hours.to_i * 60) + minutes.to_i)
  return 0 if output == 1440
  output
end


p after_midnight('00:00')# == 0
p before_midnight('00:00')# == 0
p after_midnight('12:34')# == 754
p before_midnight('12:34')# == 686
p after_midnight('24:00') #== 0
p before_midnight('24:00')# == 0
