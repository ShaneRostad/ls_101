def palindrome?(number)
  original = number.to_s
  backwards = number.to_s.reverse
  p original
  if backwards == original
    true
  else
    false
  end
end

p palindrome?)1234)
p palindrome?(3443)
