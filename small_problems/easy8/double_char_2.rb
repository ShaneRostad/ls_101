# input:
# - a string

# output:
# - a new string in which every consonant character is doubled

CONSONANTS = (('a'..'z').to_a.delete_if {|chr| 'aeiou'.include? chr}) + (('A'..'Z').to_a.delete_if {|chr| 'AEIOU'.include? chr})

def double_consonants(string)
  array_doubled = []
  array_of_chars = string.split('')
  array_of_chars.each do |chr|
    if CONSONANTS.include? chr
      array_doubled << chr * 2
    else
      array_doubled << chr
    end
  end

  array_doubled.join('')
end

p double_consonants('String')
p double_consonants("Hello-World!")
