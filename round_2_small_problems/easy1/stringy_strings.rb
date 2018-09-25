# input:
# - a positive integer

# output:
# - a string of alternating 1s and 0s always starting with 1

def stringy(integer)
  output_string = ''
  counter = 1
  loop do
    break if counter > integer
    if counter.odd?
      output_string << '1'
    elsif counter.even?
      output_string << '0'
    end
    counter += 1
  end

  output_string
end

puts stringy(9)
