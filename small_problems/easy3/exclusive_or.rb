def xor?(first, second)
  if first == true && second == false
    true
  elsif first == false && second == true
    true
  else
    false
  end
end

p xor?(5.even?, 4.even?)
p xor?(4.even?, 4.even?)
