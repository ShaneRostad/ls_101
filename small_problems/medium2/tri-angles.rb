def valid_triangle?(side1, side2, side3)
  triangle = [side1, side2, side3].sort
  return false if triangle.sum != 180
  return false if side1 <= 0 || side2 <= 0 || side3 <= 0
  true
end

def triangle(side1, side2, side3)
  return :invalid if valid_triangle?(side1, side2, side3) == false

  if side1 == 90 || side2 == 90 || side3 == 90
    return :right
  elsif side1 < 90 && side2 < 90 && side3 < 90
    return :acute
  else
    return :obtuse
  end
end

p triangle(60, 70, 50)# == :acute
p triangle(30, 90, 60)# == :right
p triangle(120, 50, 10)# == :obtuse
p triangle(0, 90, 90)# == :invalid
p triangle(50, 50, 50)# == :invalid
