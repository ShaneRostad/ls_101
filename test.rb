# Consider the word "abode". We can see that the letter a is in position 1 and b is in position 2. In the alphabet, a and b are also in positions 1 and 2. Notice also that d and e in abode occupy the positions they would occupy in the alphabet, which are positions 4 and 5.

# Given an array of words, return an array of the number of letters that occupy their positions in the alphabet for each word. For example, solve(["abode","ABc","xyzD"]) == [4,3,1].

# Input will consist of alphabet characters, both uppercase and lowercase. No spaces.

# input - an array of words

# output - return an array
# - - -  - the number of letters that occupy their positions in the alphabet for each word


# steps -
# initialize a Hash that has {a: 1, b: 2, c: 3}

# 1 - define a method that takes an array
# 2 - iterate through that array using map and setting element to str
# 3 - split this string and

CONSTANT = { a: 1, b: 2, c: 3, d: 4, e: 5, f: 6

}

def solve(input_array)
  new_array = []
  input_array.map do |str|
    str.split('').each_with_index do |chr, idx|
      if CONSTANT[:chr] == idx
        new_array << idx
      end

    end
    new_array
  end

end



p solve(["abode","ABc","xyzD"])# == [4,3,1]










###############

# An abundant number or excessive number is a number for which the sum of its proper divisors is greater than the number itself.

# The integer 12 is the first abundant number. Its proper divisors are 1, 2, 3, 4 and 6 for a total of 16 (> 12).

# Write a method, abundant_number(num), which returns true if num is abundant, false if not.
=begin
p abundant_number?(12) == true
p abundant_number?(18) == true
p abundant_number?(37) == false
p abundant_number?(120) == true
p abundant_number?(77) == false
p abundant_number?(118) == false
=end
