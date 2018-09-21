#write a method that will take a short line of text and print it within a box

def print_in_box(string)
  dashes = '-' * (string.size + 6)
  spaces = ' ' * (string.size + 6)
  new_string = string.center((string.size + 6))
  puts "+#{dashes}+"
  puts "|#{spaces}|"
  puts "|#{new_string}|"
  puts "|#{spaces}|"
  puts "+#{dashes}+"

end
print_in_box("We must protect this house!")
print_in_box("To boldly go where no one has gone before.")
