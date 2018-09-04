#inputs:
# - a positive integer
# - a boolean

#outputs:
# - calculates the bonus for a given salary
# if boolean is true, the bonus should be half of the salary
# if boolean is false, the bonus should be 0


def calculate_bonus(salary, decision)
  if decision == true
    salary / 2
  else
    0
  end
end


puts calculate_bonus(2800, true)
puts calculate_bonus(1000, false)
puts calculate_bonus(50000, true)

#puts calculate_bonus(2800, true) == 1400
#puts calculate_bonus(1000, false) == 0
#puts calculate_bonus(50000, true) == 25000
