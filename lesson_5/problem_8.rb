#using each, write some code to output all the vowels from the strings
vowels = 'aeiou'

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}


hsh.values.flatten.each do |string|
  string.each_char do |chr|
  puts chr if vowels.include? chr
  end
end
