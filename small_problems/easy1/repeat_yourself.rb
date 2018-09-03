# A method that takes two arguments
# - a String
# - a positive integer

#Then prints the string as many times as the integer indicates

def repeat(string, number)
  counter = 0
  loop do
    counter += 1
    if counter > number
      break
    else
      puts string
    end
  end
end


repeat('Hello', 5)
