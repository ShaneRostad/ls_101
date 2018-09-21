# Example
```ruby
a = [1, 2, 3, 3]
b = a
c = a.uniq
```


On line 1 the local variable `a` is initialized with a value of an array of integers.

On line 2 the local variable `b` is initialized with the same object as `a`; it points to the same object in memory, the array of integers.

On line 3 the local variable `c` is initialized with a modified version of the object variable `a` points to because the `.uniq` method is called on variable `a`.

In summary, variable `a` points to the array of integers object, which variable `b` also points to (thus they both have the same `object_id` value. And variable `c` points to a different object in memory, an array containing only the unique values of the array of integers: `[1, 2, 3]`.

# Example
```ruby
def test(b)
  b.map { |letter| "I like the letter: #{letter}" }
end

a = ['a', 'b', 'c']
p test(a)
p a
```


On line 15 we define a method named `test` that takes one parameter `b`.

On line 19 we initialized the local variable `a` with a value of an array of strings: `['a', 'b', 'c']`.

On line 10 we call the `test` method, passing in variable `a` as an argument.

On line 15 the variable `b`, local to the `test` method, is set to a value of the argument passed in: variable `a`: `['a', 'b', 'c']`.

On line 16 the `.map` method is called on `['a', 'b', 'c']` and we are passing in the block `{ |letter| "I like the letter: #{letter}" }` as an argument with the parameter `letter`. The `.map` method iterates through `['a', 'b', 'c']`, and the code blocck is run while passing each element as an agrument to the variable `letter`. The block does nothing except produce a return value each iteration, the string `"I like the letter: #{letter}"` except with `letter` being interpolated with the argument passed in. The `.map` method performs transformation by taking the return value of the block each iteration and placing that result in a new array collection.

In summary, the result of line 20 is the return value of the `.map` method being called, i.e. a new array collection:
```ruby
["I like the letter: a", "I like the letter: b", "I like the letter: c"]
```
The `array` object which `a` was initialized with has not been mutated or changed. Further, what one decides to name the `test` method's parameter (in this case `b`) does not matter in this regard.


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

On line 47 we define a method named `test` that takes one parameter `b`.

On line 51 we initialized the local variable `a` with the array `['a', 'b', 'c']`.

On line 52 we call the `test` method passing in `a` as an argument.

On line 47 the variable `b` is assigned the value of the argument passed in: `['a', 'b', 'c']`

On line 48 the `.map!` method is called on `['a', 'b', 'c']`. `.map!` iterates through `['a', 'b', 'c']`, each iteration passing each element of the array to the variable `letter`. The block does nothing except returns the string  `"I like the letter: #{letter}"` each iteration, except with `letter` interpolated with each element of the collection, each iteration. The `.map!` method performs transformation by taking the return value of the block and placing it in a new array collection.

The result of calling `p` on `test(a)` on line 52 is to print out a new array collection: `["I like the letter: a", "I like the letter: b", "I like the letter: c"]`.

Line 53 also shows us that `.map!` is a mutating version of the `.map` method. This was likely by the presence of the bang `!` operator, but now we know for sure because the variable `a` now points to a modified array: `["I like the letter: a", "I like the letter: b", "I like the letter: c"]`, the same as the return value of the `test` method. Note that the `object_id` of variable `a` has not changed; it has been mutated in place in memory.


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

On line 74 we are initializing the variable `my_arr` and setting its value to the return value of calling the `.each` method on the nested array `[[18, 7], [3, 12]]`. We are passing the block spanning lines 76-82 as an argument to the `.each` method such that the value of variable `arr` will be set to each each sub_array of `[[18, 7], [3, 12]]` each iteration.

For the first iteration, the block spanning lines 76-82 is run on `[18, 7]`, and then `[3, 12]` for the second iteration.

On line 77 the `.each` method is called first on `[18, 7]` and passed the block spanning lines 77-81 as an argument. The `.each` method iterates through the array and assigns each element, in turn, to the variable `num`.

On lines 78-80 we have an `if` conditional that will be triggered if the result of line 78 evaluates to `true`. If it evaluates to `true`, then line 79 will be run wich is taking `num` and passing it as an argument to the `puts` method, itself which prints a string respresentation of the value of `num`. Since `18` is greater than `5`, `18` will be printed to the screen, and so will `7`. In each instance, `puts` returns `nil`. However, the `.each` method ignores the return value of the block passed into it and instead returns the original collection. Thus, `[18, 7]` is returned after the first iteration of the `.each` method called on line 77. The same process is repeated for the sub_array `[3, 12]`, with each element being assigned in turn to the variable `num`, except this time only `12` will be printed, because `3` will not trigger the `if` statement on line 78. Interestingly, `[3, 12]` will end up being the final return value of the `.each` method on line 77 because it was the last code run within the block spanning lines 77-81.

In summary, `18`, `7`, and `12` will be printed to the screen. And since the `.each` method on line 76 ignores the return value of the block passed into it, it will return the original nested array collection: `[[18, 7], [3, 12]]` and as I said the local variable `my_arr` is initialized with that value.


# Example
```ruby
n = 10

[1, 2, 3].each do |n|
  puts n
end

p n
```

On line 98 we are initializing the local variable `n` with a value of integer `10`.

On line 100 we are calling the `.each` method on an array of integers `[1, 2, 3]` and passing the block spanning lines 100-102 as an argument. `.each` iterates through the collection and each turn assigns an element from it to the variable `n`. The code block passes `n` to the `puts` method which prints the value of `n` and returns `nil`. The `.each` method will print each of the elements `1`, `2`, `3` and since `.each` ignores the return value of blocks passed to it, it returns the original collection `[1, 2, 3]`. Of note, the valuable of variable `n` on line 98, which is `10`, was not printed out. That's because we named the variable local to the `.each` method the same name, `n`, and this created what is called variable shadowing; it took precedence and was the specific variable `n` being used within the `each` block.

On line 104 we are passing local variable `n` to the print method which prints its value while also calling `.inspect`. We see that `n` is still pointing to the integer `10`.


# Example
```ruby
[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end
```

On line 116 we are calling the `.map` method on the nested array `[[1, 2], [3, 4]]` and passing in the block spanning lines 116-120 as an argument. `.map` iterates through the nested array, taking each sub-array one at a time, and assigning it to the variable `arr` on line 116.

On line 117 we are calling `.map` again but now on each sub-array assigned to `arr` and we're assigning each element of said sub-array to the variable `num` on line 117 and passing in the block on lines 117-119.

On line 118 we calling the `*` method on the value held by `num` and passed the integer value of `2` which will return the value of `num` multiplied by `2`. `.map` performs transformation of the original collection by taking the return value of the block and placing it in a new collection. So, on the first iteration of `.map` called on line 116, the block is run on `[1, 2]`, where the next block is then run on each element of that array, returning `[2, 4]` to the outer `.map`. Similarly, `[3, 4]` makes it way through the blocks and `[6, 8]` is returned to the outer `.map`. This outer `.map` on line 116 takes each of these two return values and places them in a new collection array which it returns as: `[[2, 4], [6, 8]]`.


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

On line 132 we are definiing a method `fix` that takes one parameter `value`.

On line 137 we are initializing local variable `s` with value of the string `hello`

On line 138 we are calling the `fix` method and passing in `s` as an argument, and we're assigning the return value of said call to the local variable `t` being initialized there.

On line 133 we're calling the shovel `<<` method on `value` which now holds a reference to the value of `s`, itself which is `hello`. We pass the string `xyz` as an argument to the shovel operator, which is a mutating method, and which appends `xyz` to `hello`.

On line 134 we are reassigning the variable `value`, which breaks the reference to the original string value passed in by `s`, and assign it the value of `HELLOXYZ`, since we mutated `s` by appending `xyz` on line 133 and now we also called the method `.upcase` on it, which is a non-mutating method but its affect is stored permanetly in the reassignment.

On line 135 we call the mutating `.concat` method on `HELLOXYZ` and pass the string object `!` as an argument, since this is now the value held by `value` referenced here. Remember, we severed the connection to the original string passed in `s` on line 134. The result is appending `!` onto `HELLOXYZ` and the return value of the `fix` method is the string `HELLOXYZ!`, since that is the last line of code run.

`s` has been mutated and its value is now the string `helloxyz`.

`t` has a value equal to the return value of `fix(s)` which is `HELLOXYZ!`


# Example

```ruby
n = 10

1.times do |n|
  n = 11
end

puts n
```

On line 161 we're initializing the local variable `n` with a value of integer `10`

On line 163 we're calling the `.times` method on integer `1` and passing the block spanning lines 163-165 as an argument. The `.times` method is a form of `loop` that will loop a number of iterations specificed by the integer it is called upon, in this case, 1 time. Each iteration, the current count of iterations is stored in variable `n`, locally scoped to the block, starting at integer `0`.

Since this block is only looped through once, `n` is initially set to `1`. On line 164, however, `n` is reassigned to integer `11`.

On line 167 `n` is passed as an argument to the `puts` method and printed. We noticed that `n` is still pointing at `10`, just as initialized on line 161. This occurs because of variable shadowing. The reassignment occuring on line 164 happened with respect to a different variable `n`, one that was locally scoped only the `.times` block. If we had not named the parameter of that block `n`, we would have been successful in reassigning the `n` initialized on line 161.


# Example
```ruby
a = "hello"

[1, 2, 3].map do |num|
  a
end
```

On line  181 we are initializing the variable `a` with the value of string `'hello'`

On line 183 we are calling the `.map` method on an array of integers `[1, 2, 3]` and passing the block spanning lines 183-185 as an argument with variable `num`.

On line 184 the block simply returns the value of `a` which is `'hello'`. `a` is accessible here within the block because it was initialized in outer scope.

The `.map` method performs transformation based on the return value of the block by placing each return value in a new collection each iteration. Because it has three elements, it will iterate three times, once for each, and the return value of the method will be `["hello", "hello", "hello"]`.



# Example
```ruby
def change_name(name)
  name = 'bob'
end

name = 'jim'
p change_name(name)
puts name
```

On line 190 we are defining a method named `change_name` that takes one parameter `name`

On line 194 we are initializing a local variable with a value of string `jim`.

On line 195 we are calling the print method and passing in the result of calling `change_name` with `name` passed in as an argument, i.e. the string `jim`. On line 190 the `change_name` method is passed `'jim'` and on line 191 the variable `name` local to the `change_name` method is reassigned to the string `'bob'`. The return value of the method is `'bob'` and that is what is printed to the screen as a result of running line 195.

The question is, on when we run line 196 and pass `name` as an argument to the `puts` method, what is printed to the screen? The answer is `'jim'`. This is not variable shadowing. We could have named the parameter of the method something else and the result would be the same.


# Example
```ruby
def add_name(arr, name)
  arr = arr + [name]
end

names = ['bob', 'kim']
p add_name(names, 'jim')
puts names.inspect
```

On lines 220 we are defining a method named `add_name` that takes two parameters `arr` and `name`.

On line 224 we are initializing the local variable `names` and assigning it a value of an array of string objects `['bob', 'kim']`.

On line 225 we are calling the method `add_name` and passing into it two arguments, `names` which has value of the `['bob', 'kim']` and the string `"jim"`. We are passing the result of calling this method to the `p` method which prints calls the `inspect` method and prints a human readable representation to the screen.

On line 220 `arr` is assigned a reference to the value `['bob', 'kim']` and `name` is assigned a reference to the value `"jim"`. On line 221 `arr` is reassigned the value of `arr` plus `["jim"]`, i.e. `"jim"` within an array. The return value of the `add_name` method is thus the two arrays added together, `['bob', 'kim', 'jim']`. This is what is printed to the screen on line 225.

On line 226 we call the `.inspect` method on the variable `names`, which prints a human readable representation of the object, and pass that result to the `puts` method, which prints a string representation. The key is that the variable `names` that was initialized on line 224 has not been mutated. Running line 226 prints `['bob', 'kim']`.`


# Example
```ruby
def add_name(arr, name)
  arr = arr << name
end

names = ['bob', 'kim']
p add_name(names, 'jim')
puts names.inspect
```

On line 1 we are defining a method named `add_name` that takes two parameters `arr` and `name`.

On line 5 we are initializing the local variable `names` and assigning it a value of an array of string objects `['bob', 'kim']`.

On line 6 we are calling the method `add_name` and passing into it two arguments, `names` which has value of the `['bob', 'kim']` and the string `"jim"`. We are passing the result of calling this method to the `p` method which prints calls the `inspect` method and prints a human readable representation to the screen.

On line 1 `arr` is assigned a reference to the value `['bob', 'kim']` and `name` is assigned a reference to the value `"jim"`. On line 2 `arr` is mutated by passing `name` to the `append` method `<<`, also known as the shovel operator which is being called on `arr`. So `['bob', 'kim']` now looks like `['bob', 'kim', 'jim']` and that value is now the value of `arr`, which is locally scoped to the method. `['bob', 'kim', 'jim']` is the return value of the method and what is printed by running line 6.

When we call `puts` passing in the `names` variable on line 7 one might be tempted to think mutation did not happen. After all, we used reassignment on line 2 within the method. However, we mutated `arr` prior to the reassignment, thus running line 7 does in fact print out a mutated array `['bob', 'kim', 'jim']`. Interestingly, even though this code does not necessarily prove it out as written, the reassignment we made was simply a reference right back to the original object. This occurs because when an `arr` was mutated by the `append` method, it was referencing the original object, so then when reassigment happened, it kept on referencing that original object. So for example, if we were to on line 3 perform a mutating action on `arr`, like `arr << "frank"`, we'd see it would also affect the original `names` variable, even though reassignment is occurring on line 2 that should have broken the reference connection.


# Example
```ruby
def increment(a)
  a = a + 1
end

b = 3
p increment(b)
p b
```
On line 1 we are defining a method called `increment` that takes one parameter `a`.

On line 5 we are initializing local variable `b` with a value of integer `3`.

On line 6 we are calling the `increment` method and passing in `b` as an argument, and passing the result to the `p` method itself which calls `.inspect` and prints a human readable version of the object.

On line 1 variable `a` is assigned a reference to the value of `b`, i.e. `3`

On line 2 we are re-assigning `a` to the value of calling the `+` method on `a` passing in `1` as an argument. i.e. `a` is locally scoped to the method and now has a value of `3 + 1` which is `4`. That is the return value of the method and also what is printed to the screen on line 6.

On line 7 we're passing the value of `b` to the `p` method which prints `3`. Because re-assignment occurred within the method, `b` was not mutated.


# Example
```ruby
def append(s)
  s << '*'
end

t = 'abc'
puts append(t)    
puts t
```
On line 1 we are defining a method called `append` that takes one parameter `s`.

On line 5 we are initializing the variable `t` with a value of the string `"abc"`.

On line 6 we are calling the `append` method passing in argument `t`, i.e. `"abc"` and passing that result to the `puts` method which prints a string representation of the object. On line 1 variable `s` local to the method is assigned a reference to the value of `"abc"`. On line 2 the string object `"*"` is passed as an argument to the `append` method (shovel operator) which appends `"*"` to `"abc"`. The method returns `"abc*"` since line 2 is the last line of code run in the method and this is also what is printed to the screen on line 6.

On line 7 we pass variable `t` to the `puts` method and it prints `"abc*"`. This occurs because the `<<` method, used inside the `append` method on line 2, is a mutating method which affected the string originally initialized to `t`.

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
On line 1 we define a method named `fix` that takes one parameter `value`.

On line 7 we initialize variable `s` in main scope with a value of the string `"hello"`

On line 8 we call the `fix` method with argument `s`, i.e. `"hello"`, and we initialize variable `t` in main scope with the value of that call. On line 1 variable `value` local to the method is assigned a reference to the value of `"hello"`. On line 2 we call the mutating method `.upcase!` on `"hello"`. On line 3 we call the mutating method `.concat` passing in the string argument `"!"`. On line 4 we return the value of `value` which is now `"HELLO!"`, which is what the method returns, and consequently what is printed to the screen on line 11 when we call pass `t` to the `puts` method.

On line 10 we pass `s` to the `puts` method and find that variable `s`, which was initialized in main scope, indeed was mutated by both mutating methods called within the `fix` method: it's value is also now `"HELLO!"`.


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
On line 1 we define a method named `fix` that takes one parameter `value`.

On line 6 we initialize variable `s` in main scope with a value of the string `"hello"`.

On line 7 we call the `fix` method passing in `s` as an argument and we initialize variable `t` in main scope with the value of that call. On line 1 variable `value` local to the method is assigned a reference to the value of `s`, i.e. `"hello"`. On line 2 `value` is re-assgined to have the value of calling the non-mutating `.upcase` method on `'hello'`, which capitalizes all the letters. On line 3 we call the mutating `.concat` method passing in argument of string `"!"` on `value` which at that point was `"HELLO"`, so now line 3 returns `"HELLO!"`, and consequently so does the method because it was the last line run.

On line 9 we pass `t` to the `puts` method which prints a string representation of the object, which in this case is the return value of `fix` method, which is `"HELLO!"`.

On line 8 we do the same with variable `s`. We see that it remains as `"hello"`. This occurs because prior to calling the mutating `.concat` method on line 3, we broke the reference to the value of `s` by re-assignment on line 2.


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
On line 1 we are defining a method named `fix` that takes one parameter `value`

On line 6 we are initializing variable `s` in main scope with value of string `"hello"`

On line 7 we are calling the `fix` method passing in argument `"!"`


# Example
```ruby
s = 'Hello'
puts s.object_id
s += ' World'
puts s          
puts s.object_id
```
On line 1 we are initializing variable `s` with a value of string object `"Hello"` in main scope.

On line 2 we are calling `.object_id` method on `s` and passing that result to the `puts` method which prints a string representation of the object, in this case the number assigned to it in memory.

On line 3 calling the `+` method on `s` and passing the string object `" World"` as an argument, and reassigning variable `s` to that result. This concatonates `"Hello`" and `" World"` into one string object `"Hello World"` and this is what is printed to the screen on line 4 because `s` now points to this new string object.

On line 5 we are calling the `.object_id` method on `s` and passing the result to the `puts` method again. We see that the object id has changed as a result of the re-assignment. Of course, `puts` returns `nil`.


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
On line 1 we are defining the method named `fix` that takes one parameter `value`.

On line 6 we are initializing variable `s` with a value of string object `"abc"` in main scope.

On line 7 we are calling the `fix` method passing in argument `s`, i.e. `"abc"` and assigning the result of that call to variable `t` which is being initialized in main scope.

On line 1 variable `value` local to the `fix` method is assigned a reference to the value of `"abc"`

On line 2 we are using indexed assignment by referecing the value in `value` at index position `1` and re-assigning it a value of string object `"x"`. This replaces `"b"` with `"x"` within the string. This is a mutating action, meaing it is affecting the original string object referenced by variable `s` in main scope.

On line 3 are returning the value of `value`, which is `"axc"`

On line 8 we are passing `s` to the `p` method, itself which calls the `.inspect` method which prints out a human readable representation of the object. The printed result is `"axc"`.

On line 9 we pass `t` to the `p` method and find the result is the same, `"axc"`.


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
On line 1 we define a method named `tricky_method` that takes two parameters, `s_string_param` and `an_array_param`.

On line 6 we initialize variable `my_string` in main scope with a value of string object `"pumpkins"`.

On line 7 we initialize variable `my_array` in main scoope with a value of array `["pumpkins"]`.

On line 8 we call `tricky_method` passing in arguments `my_string` and `my_array`.

On line 1 variables `a_string_param` and `an_array_param`, both local to the method, are assigned references to the values of `my_string` and `my_array`, respectively.

On line 2 we call the `+` method on `a_string_param` passing in argument of string object `"rutabaga"`, which concatonates the value of itself and `"rutabaga"`, and `a_string_param` is re-assigned to have a new value of that result: it now references `"pumpkinsrutabaga"`.

On line 3 we call the `append` method using the shovel operator and passing in string object `"rutabaga"` as an argument. This appends `"rutabaga"` onto `an_array_param` leaving us with `["pumpkins", "rutabaga"]`. This is a mutating action that affected the `my_array` variable initialized in main scope on line 7. `["pumpkins", "rutabaga"]` is the return value of the method since it was the last line of code run, and also therefore the return value of running line 8.

On line 10 we pass the string object `"My string looks like this now: #{my_string}"` as an argument to the `puts` method which prints a string representation of the object. This string is using string interpolation, which allows an imbedded ruby expression to be interpretted and returned within the string. We see that `#{my_string}` returns `"pumpkins"`. This occurs because the re-assignment on line 2 did not mutate the `my_string` variable initialized on line 6 in main scope. Our full output here is `"My string looks like this now: pumpkins"`.

On line 11 we employ the same mechanics as line 10, but this time to see whether `my_array` has been mutated. Indeed it has. Our full output is `"My array looks like this now: ["pumpkins", "rutabaga"]"`.


# Example
```ruby
greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  
puts greetings
```
On line 1 we are initializing variable `greetings` in main scope with a value of hash object `{ a: 'hi' }`.

On line 2 we are referencing the value of key `:a` in the `greetings` hash and initializing variable `informal_greeting` in main scope with that value. In other words, `informal_greeting` references `"hi"`, in fact it references that very same string object in memory.

On line 3 we are calling the `append` method using the shovel operator and passing in a string object `" there" as an argument. This appends the string to its value resulting in `"hi there"`. This is a mutating method.

On line 5 we pass variable `informal_greeting` as an argument to the `puts` method which prints a string representation of the object. We see that `"hi there"` is printed.

On line 6 we pass the `greetings` variable to the `puts` method and see that `"hi there"` is printed again. This occurs because `informal_greeting` actually referenced the same object in memory that the `greetings` hash key `:a` did. They referenced the same object. When we mutated `informal_greeting`'s value we also mutated the value in the hash.`


# Example
```ruby
greetings = { a: 'hi' }
informal_greeting = {}

greetings.each { |key, value| informal_greeting[key] = value }
informal_greeting[:a] += ' there'

puts informal_greeting
puts greetings
```
On line 1 we are initializing variable `greetings` in main scope with a value of the hash `{ a: 'hi' }`.

On line 2 we are initializing variable `informal_greeting` in main scope with a value of the hash `{}`.

On line 4 we are calling the `.each` method on the `greetings` variable and passing in block `{ |key, value| informal_greeting[key] = value }` as an argument with variables `key` and `value` locally scoped to the block and they are assigned references to the values of the `greetings` hash's `keys` and `values`, respectively, as they iterate through the hash. In the block we are assigning the current value of `value`, which is the string object `"hi"`, to a newly named `key`, currently `:a`, within the `informal_greeting` hash. The `informal_greeting` hash now looks like this: `{ a: 'hi' }`.

On line 5 we are calling the `+` method on `informal_greeting` and passing in the string object `" there"` which concatonates itself with the argument, thus `"hi there"`. We are taking that result of `"hi there"`, referencing the key `:a` within `informal_greeting`, and re-assigning it `"hi there"`.

On line 7 we are passing `informal_greeting` as an argument to the `puts` method which prints a string representation of the object. It prints { a: 'hi there' }.

On line 8 we do the same but with `greetings`. We see that it prints { a: 'hi' }. Although `informal_greeting` originally held a reference to the same object value as `greeting`, because we re-assigned the value of key `:a` on line 5 for `informal_greeting`, we did not mutate `greeting`.


# Example
```ruby
a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a
```
On line 1 we are initializing local variable `a` with a value of integer `7`.

On line 2 we are initializing local variable `array` with a value of array object `[1, 2, 3]`.

On line 4 we are calling the `.each` method on `array` and passing in the block spanning lines 3-5 as an argument. `.each` iterates through each element of the array and variable `element` is assigned a reference to the value of said element. On line 5 variable `a` is re-assigned the value of `element`. Since `a` was initialized in main scope, it is accessible here in the blocks inner scope, and therefore can be re-assigned. On the first iteration, it is assigned a value of `1`, then `2`, then `3`. Since the last iteration is the last line of code run in the block, the return value within the block is `3`, however, `.each` ignores the return value and instead returns the original collection `[1, 2, 3]`.

On line 8 we pass `a` as an argument to the `puts` method which prints a string representation of the object. Integer object `3` is printed to the screen, `puts` returns `nil`, and we therefore see that `a` was successfully re-assigned by the `.each` method.


# Example
```ruby
for i in (0..5) do
  a = i
end

puts a
```
On line 1 we are are creating a `for` loop that iterates from integer value `0` to `5`. Variable `i` is assigned a reference to the value of each integer as the loop iterates. For scoping purposes, this does NOT create a new inner scope.

On line 2 variable `a` is initialized with a value of `0` in the first loop iteration and is successively re-assigned each loop until it has a final value of `5`. The return value of the loop is a range object `0..5`.

On line 5 we pass variable `a` to the `puts` method which prints a string representation of the object: `5`. By doing so, we know for sure that `a` is accessible here outside of the `for` loop, even though it was initialized within the loop. We therefore know we're dealing with a single scope. A do/end pair that does not follow a method invocation does not constitute a block.


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
On line 1 we define a method named `count_sheep` that takes no parameters.

On line 10 we call the `count_sheep` method with no arguments.

On line 2 we call the `.times` method on integer value `5` and pass in the block spanning lines 2-7 as an argument. `.times`runs the bode block 5 times with variable `sheep` assigned a value of `0` the first loop, and eventually `4` the last loop. `sheep` is scoped local to the `.times` method.

On line 3 we pass `sheep` to the `puts` method which prints a string representation of the object. During the first loop, this value is integer `0`.

On line 4 we create an `if` conditional statement that triggers if the value of `sheep` is greater than or equal to `2`. Since `0` does not satisfy this condition, the code on line 5 will not run. If the condition had been satisfied, line 5 would have run `return` which would have broken out of the `.times` loop and returned `nil`.

In summary, integers `0`, `1`, `2` are printed to the screen, at which point the `if` condition is first satisfied, triggering `return` and a break from the `.times` loop. `nil` is the return value.


# Example
```ruby
return_value =  [1, 2, 3].select do |num|
                  num + 1
                end
p return_value
```
On line 1 we initialize variable `return_value` in main scope with a value of calling the `select` method on an array object `[1, 2, 3`]. We pass the block spanning lines 1-3 as an argument to the `.select` method with variable `num` local to the method. `.select` iterates through the array, assigning each element to `num` in turn, and evaulates the return value of the block for truthiness. If the block evaluates to `true`, the item in that iteration is selected and placed into a new array object. If the block evaluates to `false`, it is not selected. On line 2, the `+` method is called on `num` and integer `1` is passed as an argument. The return value of the first iteration of the block is therefore `1 + 1`, i.e. `2`. Since `2` is an integer object, and all objects except `nil` and `false` evaluate to `true`, the return value is `true`. This will be the result for all three elements, thus all three elements are selected, and the return value of the `.select` method is array object `[1, 2, 3]`.

On line 4 we pass the variable `return_value` to the `p` method which calls the .`inspect` method, itself which prints a human readable version of the object: `[1, 2, 3]`.


# Example
``` ruby
return_value =  [1, 2, 3].map do |num|
                  num.odd?
                end
p return_value
```
On line 1  we are initializing variable `return_value` in main scope with a value of calling the `.map` method on array object `[1, 2, 3]`. We pass the block spanning lines 1-3 as an argument to `.map` with variable `num` local to the method. `.map` iterates through the array assigning each element to the `num` variable and performs transformation based on the return value of the block. The first iteration has line 2 calling the `.odd?` method on `num` which is `1`. Since integer `1` is odd, line 2 will return `true` for the first iteration, and `.map` will place this return value into a new array collection. `.map` follows this pattern for each element, therefore the return value of the `.map` method is `[true, false, true]`.

On line 4 we pass the variable `return_value` to the `p` method which itself calls the `.inspect` method and prints a human readable version of the object: `[true, false, true]`.


# Example
```ruby
return_value =  [1, 2, 3].each_with_object([]) do |num, array|
                  array << num if num.odd?
                  puts array.inspect
                end
p return_value
```
On line 1 we are initializing variable `return_value` in main scope with a value of calling the `.each_with_object` method on array object `[1, 2, 3]`. We pass the `do..end` block spanning lines 1-4 as an argument to the method with variables `num` and `array` local to the method. `.each_with_object` iterates through the array, assigning each element to `num` in turn and assigns a newly created empty array to `array`. The method will run the code block once for each number of elements present in the array.

On line 2 we call the `.append` method on `array` using the shovel operator and pass in `num` as an argument, if and only if the result of calling the `.odd?` method on `num` evaluates to `true`. On the first iteration, `num` is assigned a value of integer value `1`, and `num.odd?` evaluates to `true`, thus the code `array << num` is in fact run, which appends `1` onto `array`. On  line 3 we call the `.inspect` method on `array` which prints a human readable version of the object and pass that result to the `puts` method which prints a string version of the object, resulting in the current value of `array`, i.e. `[1]`, being printed. `puts` then returns `nil`.

This pattern is repeated for each element in `[1, 2, 3]`. Thus `[1]` is printed the first iteration, and again the second iteration because `2.odd?` evaluates to `false` and thus the array object remains at `[1]`, and then `[1, 3]` is printed the final iteration. Though `nil` is returned by line 3 on each of the iterations, `.each_with_object` ignores the return value of its block and instead returns the object it created and assigned to `array`, thus `[1, 3]`.

On line 5 we pass variable `return_value` to the `p` method which itself calls the `.inspect` method and prints a human readable version of the object: `[1, 3]`.


# Example
```ruby
def real_palindrome?(string)
  string.downcase.delete!('^A-Za-z')
  string
end

p real_palindrome?("Madam, I'm Adam")
```
On line 1 we are defining a method called `real_palindrome?` that takes one parameter `string`.

On line 6 we are calling the method `real_palindrome?` and passing in an argument of string object `"Madam, I'm Adam"`.

On line 1 variable `string` local to the method is assigned a reference to the value of `"Madam, I'm Adam"`. On line 2 we are calling the `.downcase` method on `string`. Importantly, this severs the ability to mutate `"Madam, I'm Adam"` because `.downcase` is a non-mutating method and at this point in time we have now created a new object in memory that we are working with. Therefore, when we further chain the `.delete!` method with argument `'^A-Za-z'` passed in, itself which normally would be a mutating method, it only has an effect on the new object created in the method. The string `"Madam, I'm Adam"` passed in to the method is not mutated.

On line 3 we return `string` as the return value of the method. When we pass the return value of the method to `p`, which calls .`inspect` and prints a human readable version of the object, we find that it prints `"Madam, I'm Adam"`. It was not mutated.



# Example
```ruby
def test(b)
  b.map { |letter| "I like the letter: #{letter}" }
end

a = ['a', 'b', 'c']
p test(a)
p a
```

On line 1 we are defining a new method called `test` that takes one parameter `b`.

On line 5 we are initializing variable `a` in main scope and assigning it a value of the array object `['a', 'b', 'c']`.

On line 6 we are calling the `test` method passing in argument `a`, itself which references `['a', 'b', 'c']`. We are passing that entire result to the `p` method, itself which calls the `.inspect` method and prints a human readable version of the object to the screen.

On line 1 variable `b`, local to the method, is assigned a reference to the value of `['a', 'b', 'c']`. On line 2 we call the `.map` method on `b` passing the block from `{}` as an argument. `.map` iterates through the array, assigning each element of the array to variable `letter` and running the block once for each element in the array. `.map` performs transformation based upon the return value of the block, i.e. it takes the return value each iteration and places it in a new array collection and returns that.

The result of running line 6 will be a new array object: `["I like the letter: a", "I like the letter: b", "I like the letter: c"]

On line 7 we pass variable `a` to the `p` method and find it prints `['a', 'b', 'c']`. It was not mutated.
