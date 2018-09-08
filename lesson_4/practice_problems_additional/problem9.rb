def titleize(string)
  new_string = string.split(' ').each { |word| word.capitalize! }
  new_string.join(" ")
end

words = "the flintstones rock"

p titleize(words)

# titleize(words) = > "The Flintstones Rock"
