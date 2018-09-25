# input:
# - 3 integer scores

# output:
# - the average, translated to a letter grade.

# conditions:
# 90 <= score <= 100 -- 'A'
# 80 <= score < 90 -- 'B'
# 70 <= score < 80 -- 'C'
# 60 <= score < 70 -- 'D'
# 0 <= score < 60 -- 'F'

#assumptions:
# - tested values all between 0-100


# steps:
# 1 - initialize a `key` to hold our grading criteria
# - - return a[1] if a[0].include?(average)
# 2 - define a method get_grade(first, second, third)
# 3 - initialize average = ((first * second * third) / 3)
# 4 - check our grading criteria, to see where the average lands
# 5 - return string value of grading criteria

GRADE_A = [(90..100).to_a] + ['A']
GRADE_B = [(80..89).to_a] + ['B']
GRADE_C = [(70..79).to_a] + ['C']
GRADE_D = [(60..69).to_a] + ['D']
GRADE_F = [(0..59).to_a] + ['F']

GRADES = [[(90..100).to_a] + ['A']] + [[(80..89).to_a] + ['B']]

def get_grade(first, second, third)
  final_grade = ''
  average = ((first + second + third) / 3)

  GRADES.each do |grade|
    if grade[0].include?(average)
      final_grade << grade[1]
    end
  end

final_grade
end

=begin
def get_grade(first, second, third)
  average = ((first + second + third) / 3)
  return GRADE_A[1] if GRADE_A[0].include?(average)
  return GRADE_B[1] if GRADE_B[0].include?(average)
  return GRADE_C[1] if GRADE_C[0].include?(average)
  return GRADE_D[1] if GRADE_D[0].include?(average)
  return GRADE_F[1] if GRADE_F[0].include?(average)
end
=end

p get_grade(95, 90, 93)
