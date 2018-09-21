# a bank of switches from 1 to `n`.
# each switch is connected toexactly one light. so we have `n` lights
# on the first round, you turn all of them on
# on the second round, you toggle every second light off (2, and 4)
# on the third round, you toggle every third light
# on the fourth round, you toggle every fourth light
# etc....

# repeat the process until you have been through n repititions

# input:
# - one argument `n`

# output:
# - an Array that identifies which lights are on after `n` repitions

# steps:
# 1 - define a method that takes an integer `n`
# 2 - lights = (1..n).to_a
# 3 -
require "pry"

def all_lights(n)
  lights = (1..n).to_a
  counter = 1

  loop do
    break if counter > n
    lights.map! do |light|
      if light % counter == 0
        light * -1
      else
        light
      end
    end
    counter += 1
  end
  lights.map { |light| light * -1 }.select { |light| light > 0 }
end


p all_lights(5) 
p all_lights(10)
# n.times do |iterator|
#
# if light % n == 0
# - toggle it
# else
# do nothing
# end
=begin

lights = [1, 2, 3, 4, 5]

lights.map! do |light|
  if light % 2 == 0
    light = light * -1
  else
    light
  end
end

p lights
=end
