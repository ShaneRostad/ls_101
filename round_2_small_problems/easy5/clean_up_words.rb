ALPHABETIC_W_SPACE = ('a'..'z').to_a + [' '] + ('A'..'Z').to_a
def cleanup(string)
  string.gsub(/[!'?+*&-]/, ' ').squeeze(' ')
  #{|x| ALPHABETIC_W_SPACE.include?(x)}.join('').squeeze(' ')

end
p cleanup("---what's my +*& line?")
