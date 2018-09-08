# write a method that:
# returns true if the string passed as an argument is a palindrome, false otherwise


# input:
# - a string

#output:
# - true or false

#A palindrom reads the same forward and backward


def palindrome?(word)
  original = word
  backwards = word.reverse

  if backwards == original
    true
  else
    false
  end
end

p palindrome?("hello")
p palindrome?("madam")
