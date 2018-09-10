def uuid

characters = %w(1 2 3 4 5 6 7 8 9 a b c d e f g h i j k l m n o p q r s t u v w x y z)

section_1 = []
section_2 = []
section_3 = []
section_4 = []
section_5 = []

6.times do
  section_1 << characters.sample
  section_2 << characters.sample
  section_3 << characters.sample
  section_4 << characters.sample
end
8.times do
  section_5 << characters.sample
end

return "#{section_1.join}-#{section_2.join}-#{section_3.join}-#{section_4.join}-#{section_5.join}"
end

puts uuid
puts uuid
puts uuid
