# Example
```ruby
a = [1, 2, 3, 3]
b = a
c = a.uniq
```

On line 3 the local variable `a` is initialized to an array of integers [1, 2, 3, 3].
On line 4, local variable  `b` is initialized to the variable `a`, which sets the value of variable `b` to the Array of integers [1, 2, 3, 3].
On line 5, we initialize local variable `c` to the value of calling `.uniq` on `a`.
`.uniq` returns a new Array consisting of the non-repeating integers found in the Array variable `a` is pointing to.
This sets the value of local variable `c` to a new Array `[1, 2, 3]`



# Example
```ruby
def test(b)
  b.map { |letter| "I like the letter: #{letter}" }
end

a = ['a', 'b', 'c']
p test(a)
p a
```

On line 18 we're defining the method `test`, which spans lines 18-20. `test` takes a single argument and assigns it to the method local variable `b`.

On line 19, we call `.map` on the method local variable b and define a block with `{ }`. Calling `.map` on `b` iterates through each element that has been passed into `test`, and reassigns the current element to the method local variable `letter`. Each element is then transformed to a String, `"I like the letter: #{letter}"` and `.map` returns a new Array.

On line 22 we initialize the local variable `a` to an Array `['a', 'b', 'c']`. We then call `p` on the return value of invoking `test` with `a` passed in as an argument. This prints a new Array containing 3 elements. `["I like the letter a", "I like the letter b", "I like the letter c"]`

on line 24 we call `p` on local variable `a`, which prints the value of `a` to the screen: `['a', 'b', 'c']`.

We receive these results because the method `test` is not destructive, and this illustrates that Ruby uses pass-by-value when the method does not perform any destructive actions on the object passed in.





# Example
```ruby
# now with map! instead of just map

def test(b)
  b.map! {|letter| "I like the letter: #{letter}" }
end

a = ['a', 'b', 'c']
p test(a)
p a
```

On line 45 we define a method `test` which takes an argument and assigns it to the local method variable `b`. On line 46 we invoke the `.map!` method on local variable `b`, which is the destructive version of the `map` method. This means that we are now mutating the object when it is passed in as the argument.

`.map!` defines a block, which assigns the element of `b` in the current iteration to the new method local variable `letter`. We then transform the element to the new value of `"I like the letter: #{letter}"`.

On line 49, we initialize a new local variable `a` and assign it to the Array `['a', 'b', 'c']`.

On line 50, we call `p` on the return value of invoking the `test` method with local variable `'a'` passed in as the argument. This returns the original Array transformed to `["I like the letter a", "I like the letter b", "I like the letter c"]`, and outputs this Array to the screen.

On line 51, we call `p` on local variable `a`, which returns the now-modified Array `["I like the letter a", "I like the letter b", "I like the letter c"]` and outputs it to the screen.

This is because we used the destructive version of `map!` within our method definition of `test`, causing `test` to mutate the object. This illustrates how Ruby acts as pass-by-reference when the method uses destructive actions.





# Example
```ruby
my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end
```










# Example
```ruby
n = 10

[1, 2, 3].each do |n|
  puts n
end

p n
```



# Example
```ruby
[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end
```




# Example
```ruby
def fix(value)
  value << 'xyz'
  value = value.upcase
  value.concat('!')
end
s = 'hello'
t = fix(s)
```





# Example

```ruby
n = 10

1.times do |n|
  n = 11
end

puts n
```





# Example
```ruby
a = "hello"

[1, 2, 3].map do |num|
  a
end
```




# Example
```ruby
def change_name(name)
  name = 'bob'
end

name = 'jim'
p change_name(name)
puts name
```




# Example
```ruby
def add_name(arr, name)
  arr = arr + [name]
end

names = ['bob', 'kim']
p add_name(names, 'jim')
puts names.inspect
```




# Example
```ruby
def add_name(arr, name)
  arr = arr << name
end

names = ['bob', 'kim']
p add_name(names, 'jim')
puts names.inspect
```




# Example
```ruby
def increment(a)
  a = a + 1
end

b = 3
p increment(b)
p b
```




# Example
```ruby
def append(s)
  s << '*'
end

t = 'abc'
puts append(t)    
puts t
```




# Example
```ruby
def fix(value)
  value.upcase!
  value.concat('!')
  value
end

s = 'hello'
t = fix(s)

puts s           
puts t
```   




# Example
```ruby
def fix(value)
  value = value.upcase
  value.concat('!')
end

s = 'hello'
t = fix(s)
puts s          
puts t
```




# Example
```ruby
def fix(value)
  value << 'xyz'
  value = value.upcase
  value.concat('!')
end
s = 'hello'
t = fix(s)
puts s         
puts t   
```




# Example
```ruby
s = 'Hello'
puts s.object_id
s += ' World'
puts s          
puts s.object_id
```




# Example
```ruby
def fix(value)
  value[1] = 'x'
  value
end

s = 'abc'
t = fix(s)
p s            
p t  
```




# Example
```ruby
def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
```




# Example
```ruby
greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  
puts greetings
```




# Example
```ruby
greetings = { a: 'hi' }
informal_greeting = {}

greetings.each { |key, value| informal_greeting[key] = value }
informal_greeting[:a] += ' there'

puts informal_greeting
puts greetings
```




# Example
```ruby
a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a
```




# Example
```ruby
for i in (0..5) do
  a = i
end

puts a
```




# Example
```ruby
def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep
```





# Example
```ruby
return_value =  [1, 2, 3].select do |num|
                  num + 1
                end
p return_value
```




# Example
``` ruby
return_value =  [1, 2, 3].map do |num|
                  num.odd?
                end
p return_value
```





# Example
```ruby
return_value =  [1, 2, 3].each_with_object([]) do |num, array|
                  array << num if num.odd?
                  puts array.inspect
                end
p return_value
```




# Example
```ruby
def real_palindrome?(string)
  string.downcase.delete!('^A-Za-z')
  string
end

p real_palindrome?("Madam, I'm Adam")
```




# Example
```ruby
def test(b)
  b.map { |letter| "I like the letter: #{letter}" }
end

a = ['a', 'b', 'c']
p test(a)
p a
```
