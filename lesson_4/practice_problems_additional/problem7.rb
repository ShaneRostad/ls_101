statement = "The Flintstones Rock"
new_hash = {}

statement.split('').each do |char|
  letter_frequency = statement.scan(char).count
   new_hash[char] = letter_frequency if letter_frequency > 0
end

puts new_hash
