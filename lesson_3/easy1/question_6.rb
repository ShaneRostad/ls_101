famous_words = "seven years ago..."

#show two different ways to put the expected "Four score and" in front of it
new_words = famous_words.replace("Four score and seven years ago...")
puts new_words


famous_words.insert(0, "Four score and ")

puts famous_words
