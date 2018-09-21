BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)


def block_word?(string)
  BLOCKS.none? { |block| string.count(block) >= 2 }
end

p block_word?('BATCH')
p block_word?('BUTCH')
