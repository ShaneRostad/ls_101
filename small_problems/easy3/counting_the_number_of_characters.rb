#input
# - a word
# - or multiple words

#output: the number of characters

puts "Please write a word or multiple words: "
words = gets.chomp

words_count = words.split(' ').join('').size

puts "There are #{words_count} characters in #{words}."
