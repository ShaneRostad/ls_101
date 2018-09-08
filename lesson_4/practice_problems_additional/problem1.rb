flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

#Turn this array into a hash where the names are the keys and the values are the positions in the array

f_hash = {}

flintstones.each_with_index do |name, index|
  f_hash[name] = index
end

puts f_hash
