def all_substrings(string)
  starting_counter = 0

  return_array = []

  loop do
    break if string.size == starting_counter
    counter = 0
    loop do
      break if counter == string.size
      return_array << string[starting_counter..counter]
      counter += 1
    end
    starting_counter += 1
  end

  return_array.delete("")
  return_array
end


def palindroms(string)
  array_of_substrings = all_substrings(string)
  are_palindroms = []

  array_of_substrings.each do |string|
    if string == string.reverse && string.size > 1
      are_palindroms << string
    end
  end
  are_palindroms
end



p palindroms('madam')

=begin
palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
=end
