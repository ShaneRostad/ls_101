=begin
equilateral = side1 == side2 == side3
isosceles = 2 sides are of equal length - third is different
scalene - all sides are different lengths

to be a triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side, and all sides must have lengths > 0: if not, the triangle is invalid.
=end

# input: 3 integers - the length of 3 sides of a triangle

# output: a symbol, :equilateral, "isosceles", :scalene or invalid

# steps:
# 1 - define a method that checks the validity of the triangle valid_triangle?
# 2 - triangle = [side1, side2, side3].sort
# 3 - return false if side3 > side1 + side2
# 3 - return false if side1 < 0 || side2 < 0 || side3 < 0
# 4 - end

# 1 -


def valid_triangle?(side1, side2, side3)
  triangle = [side1, side2, side3].sort
  return false if triangle[-1] > triangle[0] + triangle[1]
  return false if side1 <= 0 || side2 <= 0 || side3 <= 0
  true
end

def triangle(side1, side2, side3)
  return :invalid if valid_triangle?(side1, side2, side3) == false

  if side1 == side2 && side2 == side3
    return :equilateral
  elsif side1 == side2 || side2 == side3 || side3 == side1
    return :isosceles
  else
    return :scalene
  end
end


p triangle(3, 3, 3)# == :equilateral
p triangle(3, 3, 1.5)# == :isosceles
p triangle(3, 4, 5)# == :scalene
p triangle(0, 3, 3)# == :invalid
p triangle(3, 1, 1)# == :invalid
