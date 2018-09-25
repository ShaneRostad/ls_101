# input:
# - two arguments:
# - - an Array containing 2 or more elements, that when combined with adjoining spaces will produce someone's name
# - - and a Hash, with two keys, :title, and :occupation

# output:
# - A greeting (a string) that uses the person's full name and title


# steps
# 1 - define a method greetings(name_array, detail_hash)
# 2 - puts a string


def greetings(name_array, detail_hash)
  puts "Hello, #{name_array.join(' ')}! Nice to have a #{detail_hash[:title]} #{detail_hash[:occupation]} around."
end





greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
