def word_sizes(string)
  hash_values = {}
  string.gsub(/[^a-z ]/i, '').split.each do |word|
    if hash_values.keys.include?(word.size)
      hash_values[word.size] += 1
    else
      hash_values[word.size] = 1
    end
  end
  hash_values
end


p word_sizes('Four score and seven.')
p word_sizes('Hey diddle diddle, the cat and the fiddle!')
