# input:
# - a string

# output:
# - the ASCII string value of the string.

def ascii_value(string)
  sum = []
  string.split('').each do |chr|
      sum << chr.ord
    end
  sum.sum
end

p ascii_value('Four score')
