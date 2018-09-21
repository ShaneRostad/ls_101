# input:
# - a string

# output:
# - a new string in which every character is doubled

def repeater(string)
  array_doubled = []
  array_of_chars = string.split('')
  array_of_chars.each do |chr|
    array_doubled << chr * 2
  end
  array_doubled.join('')
end

p repeater('Hello')
