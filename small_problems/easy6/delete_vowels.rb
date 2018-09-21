#write a method that takes an array of strings,
# and returns an array of teh same string values, except with the vowels
# (a, e, i, o, u)

#steps
# 1 - define a method that takes an array
# 2 - iterate through the array accessing each string
# 3 - perform the delete!("aeiou")
# 4 - returns the string


def remove_vowels(array_of_strings)
  new_array = array_of_strings.map { |string| string.delete 'aeiouAEIOU' }
  new_array

end


p remove_vowels(%w(ABC AEIOU XYZ))
p remove_vowels(%w(green YELLOW black white))
