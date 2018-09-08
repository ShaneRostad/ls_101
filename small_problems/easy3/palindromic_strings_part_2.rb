def real_palindrome?(word)
  original = word.downcase.gsub(/[^0-9a-z ]/i, '').split(' ').join('')
  backwards = word.downcase.reverse.gsub(/[^0-9a-z ]/i, '').split(' ').join('')
  if original == backwards
    true
  else
    false
  end
end

p real_palindrome?("hello")
p real_palindrome?("madam")
p real_palindrome?("Madam, I'm Adam")

random = "Hello"
