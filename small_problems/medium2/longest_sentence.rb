# input:
# take a text file

# output:
# the longest sentence in the file based on number of words

# sentences may end with periods (.) exclamation points ( ! ) or question marks (?)

# steps:
# - require 'yaml'

local_file = File.open('text.txt').read
sentence_lengths = []

local_file.split(/[!?.]/).each do |sentence|
  sentence_lengths << sentence.split(' ').length
  sentence_lengths
  end

p sentence_lengths.max
