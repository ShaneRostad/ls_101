def reverse_words(string)
  if string.split.length > 1
    string.split.each do |word|
      if word.length >= 5
        word.reverse
      end
      string.join(' ')
    end
  end

  else
    string.split(' ').each do |word|
      if word.length >= 5
        word.reverse
      end
    end
end



p reverse_words('Walk around the block')   # => Walk dnuora the kcolb
p reverse_words('Launch School')           # => hcnuaL loohcS
