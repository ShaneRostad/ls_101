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

On line 72 we initialize the local variable my_arr to the Array, containing two nested Arrays of integers `[[18, 7],[3, 12]]`. We then invoke the `Array#each` method on this `my_arr` which iterates through `my_arr`, and assigns the sub-array of the current iteration to the method local variable `arr`.

On line 73 we invoke the `Array#each` method on the method local variable `arr`, which iterates through each sub-array and assigns the element of the current iteration to method local variable `num`.

On line 74 we use the conditional `if` with the argument `num > 5`, so that line 75 will only be performed on Integers within my_arr that are greater than 5.

On line 75 we invoke `Kernel#puts` on method local variable `num` which outputs any Integer greater than 5 to the screen.

The result of this program is 3 outputs to the screen: `18`, `7`, and `12`. The program returns the original Array.


# Example
```ruby
n = 10

[1, 2, 3].each do |n|
  puts n
end

p n
```

On line 94 we intiialize the local variable to the Integer 10.

On line 96, we invoke the method `.each` on an Array of integers `[1, 2, 3]` and pass a block as an argument defined by the `do..end` spanning lines 96-98. The `.each` method iterates through the array of Integers and reassigns the element of the current iteration to the method local variable `n`. For example, on the first iteration `1` will be assigned to the variable `n`, which will then be used on line 97 when we invoke the method `Kernel#puts` and pass `n` as the argument. This outputs the current value of `n` to the screen which is `1`, and then moves on to the next element in the Array of integers and outputs `2` and so on.

lines 96-98 will output `1`, `2`, and `3` to the screen, and return `nil` because `Kernel#puts` always returns `nil`.

Line 100 calls `Kernel#p` on local variable `n` which will return `10` and output `10` to the screen.

The reason why this local variable `n` is not printed by line 96-96 is because we perform what is known as variable shadowing when we use `n` as the method local variable on line 96.





# Example
```ruby
[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end
```

On line 119 we invoke the `.map` method on the Array of nested arrays `[[1, 2], [3, 4]]`. `.map` defines a block spanning lines 119-123 which iterates through the Array and assigns each sub-array to the new method local variable `arr`. This means that for the current iteration, `arr = [1, 2]`. We then invoke the `.map` method on `arr` and define a block spanning lines 120-122 which iterates through the current Array `arr` and assigns each Integer to the method local variable `num`, and multiplies that number by `2`. Because `.map` considers the return value of the block spanning lines 120-122, the current iteration returns `[2, 4]` to the block spanning lines 119-123. Which, because `.map` considers the return value of the block spanning lines 119-123, will ultimately return a new Array `[[2, 4], [3, 4]]`.

This program illustrates how the `.map` method considers the return value of the block and returns a new, transformed collection that is the same length as the original Object.


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

On line 133 we define the method `fix` which takes one argument. This method spans lines 133-137 and when invoked it assigns the argument that is passed in to the method local variable `value`.

On line 134 we then call the `<<` method on `value`, and pass `xyz` as an argument. Which, because `<<` is a destructive method, it mutates the calling object that is currently assigned to the method local variable `value`.

Then, on line 135 we reassign `value` to the return value of calling `.upcase` on `value`. This points `value` to a new String object with all of the letters of the String capitalized.

Finally, we invoke `.concat` on `value` and pass `!` as an argument, which modifies the current object `value` is pointing to by appending `!` to the end of the String.

On line 138 we initialize the local variable `s` and assign it the String object `hello`.

Then, on line 139, we intiialize the local variable `t` to the return value of passing `s` as an argument to `fix`.

Because line 134 modifies the original String that is pointed to by `s`, we modify the String object to be `helloxyz`.

Then, we reassign `value` to a new object `HELLO`, and finally on line 136 we destructively append `!` so the String object is now `HELLO!`.

This means that `s = helloxyz`, and `t = HELLO!`. This demonstrates the concept of variables as pointers, where destructive actions mutate the original object but reassignment points variables to new objects.



# Example

```ruby
n = 10

1.times do |n|
  n = 11
end

puts n
```

On line 165 we initialize the local variable `n` to the Integer `10`.

On line 167 we invoke the `.times` method on `1` which loops through the defined block a set number of times as determined by the Integer it's called on. The block then initializes a method local variable `n`, which is set to the current number of times we have iterated through the loop. In this case, `1` is assigned to `n` and we will loop through the iteration only one time.

Line 168 then reassigns `n` to `n = 11`, which points `n` to a new Integer object of 11. This returns 11 because it was the last piece of code run within the block.

On line 171 we invoke the `Kernel#puts` method and pass `n` as the argument, which is still assigned to the integer `10` as it was on line 165. This prints `10` to the screen and returns `nil`. The reason lines 167-169 do not modify the value of `n` is because by assigning the current iteration number to `n` within the block, we perform variable shadowing.

This means we block the method invocation's access to any outer scope variable with the name `n`.






# Example
```ruby
a = "hello"

[1, 2, 3].map do |num|
  a
end
```

on line 191 we're initializing local variable `a` to the String `"hello"`

On line 193 we are invoking the `.map` method on the Array `[1, 2, 3]` and passing in a block as the argument, which spans lines 193-195. The `.map` method iterates through each element in the collection and assigns the element of the current iteration to the method local variable `num`.

Then on line 194 we are executing `a` which has a return value of `"hello"`. Because the `.map` method considers the return value of the block and transforms the elements based on that return value, the return value of this program will be a new collection with the same number of elements as the original, except this Array will be `["hello", "hello", "hello"]`.

This problem illustrates that according to local variable scoping rules in ruby, variables initialized in the outer scope are available in inner scope method invocations.





# Example
```ruby
def change_name(name)
  name = 'bob'
end

name = 'jim'
p change_name(name)
puts name
```

On line 212 we define a new method `change_name` which takes an argument `name` and spans lines 212-214. On line 213 we reassign the method local variable `name` to the String value `'bob'`, and this value is returned because it is the last line executed within the method.

On line 216 we initialize the local variable `name` and assign it the string value `jim`..

On line 217 we invoke the method `p` and pass the return value of `change_name(name)` as the argument. `p` prints the return value of the argument to the screen and also calls `.inspect` on the value. The output to the screen will be `'bob'`, because that was the return value of the method `change_name`.

On line 218 we invoke the `Kernel#puts` method and pass local variable `name` as the argument. This outputs `'jim'` to the screen because the reassignment of the local variable `name` within `change_name` does not mutate the original object, but instead points the method local variable `name` to a new object.






# Example
```ruby
def add_name(arr, name)
  arr = arr + [name]
end

names = ['bob', 'kim']
p add_name(names, 'jim')
puts names.inspect
```


On line 236 we define the method `add_name` which takes two parameters `arr` and `name`.

On line 240 we initialize the local variable `names` equal to the Array value `['bob', 'kim']`.

On line 241 we invoke the method `p` and pass `add_name(names, 'jim')` as the argument. This will print the return value of `add_name(names, 'jim')` to the screen and call `.inspect` on the element. On line 236 we assign `names` to the method local variable `arr`, and `'jim'` to the method local variable `name`. Then on line 237 we reassign the value of arr to the return value of invoking the `+` method on arr with `[name]` passed as an argument. This returns a new Array with with the value `['bob', 'kim', 'jim']` which is output to the screen.

Then on line 242 we invoke the method `.puts` and pass the result of calling `.inspect` on `names` as the argument. This outputs the Array `['bob', 'kim']` to the screen and returns `nil`.

This happens because on line 237 we reassigned arr which pointed it to a new object, rather than calling a destructive method on the original `names` array. This illustrates the concept of variables as pointers and that reassignment is not destructive.






# Example
```ruby
def add_name(arr, name)
  arr = arr << name
end

names = ['bob', 'kim']
p add_name(names, 'jim')
puts names.inspect
```

On line 263 we define the method `add_name` that takes two parameters `arr` and `name`.

On line 267 we initialize the local variable `names` to the Array value of `['bob', 'kim']`.

On line 268 we invoke the `add_name` method with local variable `names` and `'jim'` passed in as the arguments, and pass the return value to `p` as an argument, which will print a human-readable version to the screen.

When we invoke the `add_name` method on line 268, we assign a reference to the Array value of `names` to the method local variable `arr`, and a reference to the String value `'jim'` to `name`. Then, on line 264 we reassign `arr` to the return value of invoking the method `<<` on `arr` with `name` passed as the argument. This reassigns arr to the same Array object, only it has been mutated due to the destructive nature of the `<<` method and is now `['bob', 'kim', 'jim']`.

This means that line 268 will output `['bob', 'kim', 'jim']` and return `['bob', 'kim', 'jim']`.

On line 269 we invoke `.puts` and pass `names.inspect` as the argument. This will output `['bob', 'kim', 'jim']` to the screen and return `nil`.

We may think that line 264 is reassignment so it should not mutate the `names` object. Though, on line 264, what we are doing is reassigning `arr` to the same object, only after being mutated by the `<<` method. Since `arr` is a reference to the same object `names` points to, we have changed the value of `names`.




# Example
```ruby
def increment(a)
  a = a + 1
end

b = 3
p increment(b)
p b
```

On line 291 we define a method `increment` that takes a single parameter `a`.

On line 295, we intiialize the local variable `b` to the Integer value `3`.

On line 296 we invoke the `increment` method with local variable `b` passed in as the argument and use that return value as the argument when we call `p`, which will print out a human readable version of the return value to the screen.

When we invoke the `increment` method, we assign a reference to the value of `b` to the method local variable `a`. On line 292 we then reassign `a` to the value of `a + 1`, which will return the Integer value `4`. This value is then output to the screen.

On line 297 we call `p` with local variable `b` as the argument, which will return `nil` and print `3` to the screen.

The reason local variable `b` is not altered by calling `increment(b)` is because `increment` performs reassignment, which points method local variable `a` to a new object.






# Example
```ruby
def append(s)
  s << '*'
end

t = 'abc'
puts append(t)    
puts t
```

On line 319 we define a method `append` which takes one parameter `s`.

On line 323 we initialize the local variable `t` to the String value `'abc'`.

On line 324 we invoke the `append` method passing in local variable `t` as the argument, and use the return value as the argument passed into our method invocation of `puts`.

On line 319 the `append` method assigns a reference of local variable `t` to the method local variable `s`. Then on line 320 we invoke the method `<<` on `s` and pass `'*'` as the argument, which mutates the String object `s` is pointing to by appending a `'*'` to the end -- which is now `'abc*'`. This value is the return value of the method and is output to the screen by line 324.

We then invoke the `puts` method with local variable `t` passed in as the argument, which will return `nil` and print `abc*` to the screen.

The reason why `t` was affected by invoking `append(t)` is because as we mentioned, the `append` method mutates the object pointed to by `s`, which was the object pointed to by `t`.






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


On line 347 we define a method `fix` that takes one parameter `value`.

On line 353 we initialize the local variable `s` to the String value `'hello'`.

On line 354 we initialize the local variable `t` to the return value of invoking `fix` with local variable `s` passed in as the argument. Looking to line 347, `fix` assigns a reference of the value of `s` to the method local variable `value`. One line 348 we invoke the `.upcase!` method on `value` which mutates the object `value` is pointing to so we now have `value = HELLO`. Then on line 249 we call `.concat` on `value` with `'!'` passed in as the argument, which again mutates the object `value` is pointing to so we now have `value = HELLO!`. We then execute `value` on line 350 which will be the return value of the method since it was the last line executed. This sets the local variable `t` to the value of `'HELLO!'`.

We then invoke the `puts` method on line 356 with local variable `s` passed in as the argument which will return `nil` and output `'HELLO!'` to the screen.

On line 357 we invoke the `puts` method with local variable `t` passed in as the argument which will return `nil` and output `HELLO!`

The reason why `s` has the same value as `t`, is because in the `fix` method we assign `value` to a reference of the object `s` is pointing to. We then mutate that object with destructive methods `upcase!` and `concat`.



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

On line 377 we define the method `fix` which takes one parameter `value`.

On line 382 we initialize the local variable `s` to the String value `'hello'`.

On line 383 we invoke the `fix` method with the value of `s` i.e. `'hello'` passed in as the argument, and use that return value as the value of the initialized variable `t`. On line 377 we assign the method local variable `value` to a reference to the String object `'hello'`. Then on line 378 we reassign `value` to the return value of calling `.upcase` on `value`, which points `value` to a new String object `HELLO`. On line 379 we invoke the `concat` method on `value` with `'!'` passed in, which mutates the new String object `value` is pointing to so it now is `'HELLO!'`. Since this is the last line in the method, the method returns `'HELLO!'` and that is now the value of local variable `t`.


On line 384 we invoke `puts` with the local variable `s` passed in as the argument, which will return `nil` and output `hello` to the screen.

On line 385 we invoke `puts` with the local variable `t` passed in as the argument, which will return `nil` and output `HELLO!` to the screen.

The reason why `s` was not modified when passed into the `fix` method is because on line 378 we reassigned the method local variable `value` to a new object before invoking any destructive calls on it.



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

similar to the last few, we are mutating the original object on 406, and then reassigning value to a new object on line 407 before doing further mutations.




# Example
```ruby
s = 'Hello'
puts s.object_id
s += ' World'
puts s          
puts s.object_id
```

On line 423 we are initializing local variable `s` to the String value `'Hello'`.

On line 424 we invoke `puts` with the return value of calling `.object_id` on `s`, which will print to the screen the object id of the object `s` is pointing to.

On line 425 we are invoking the `+=` method on `s` with the String `' World'` passed in as the argument. This reassigns `s` to a new String object with the value `'Hello World'`.

Then, on line 426 we invoke `puts` on local variable `s`, which will return `nil` and output `'Hello World'` to the screen.

On line 427 we invoke `puts` with the result of calling `object_id` on `s`, which will print to the screen the object id of the object `s` is pointing to.

The resulting output on line 427 will be different than the output of line 424 because we reassigned `s` to a new object on line 425. This illustrates the variables as pointers concept.








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

On line 451 we define the method `fix` which takes one parameter `value`.

On line 456 we initialize the local variable `s` to the String value `'abc'`.
On line 457 we intiialize the local variable `t` to the return value of invoking `fix` with local variable `s` passed in as the argument. On line 451 we assign a reference to the value of local variable `s` i.e. `'abc'`, to the method local variable `value`. On line 452 we invoke the `String#slice` method using the shorthand operation of `value[1]`, which selects the character at index value `1` and assigns it a new value of `'x'`. This mutates the String object `'abc'` to now be `'axc'`. On line 453 we execute method local variable `value` which will cause the method to return the value of `value` because it's the last line of the method.

On line 458 we invoke the `p` method on local variable `s` which print a human readable version of the value to the screen. The value of `s`, `'axc'` is output to the screen.

On line 459 we again invoke the `p` method on local variable `t`, which will output `'axc'` to the screen.

The reason why the value of `s` was mutated by the `fix` method is because the `String#slice` method mutates the object rather than reassigning the variable to a new value. So, `value` was a reference to the value of `s`, which was String object `'abc'`, which was mutated to be `'axc'`.






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

On line 480 we define the method `tricky_method`, which takes two parameters `a_string_param` and `an_array_param`.

On line 485 we intialize local variable my_string to the String value `"pumpkins"`.

On line 486 we initialize local variable my_string to the Array value `["pumpkins"]`.

On line 487 we invoke `tricky_method` and pass `my_string` and `my_array` as arguments. On line 480, `tricky method` assigns the method local variables `a_string_param` and `an_array_param` to a reference of the values of `my_string` and `my_array` respectively. Within the method, `a_string_param` now points to the String object `"pumpkins"` and `an_array_param` now points to the Array object `["pumpkins"]`.

On line 481 we invoke the `+=` method on `a_string_param` and pass the String `"Rutabaga"` as the argument. This reassigns `a_string_param` to a new String object with the value of `"pumpkinsrutabaga"`.

On line 482 we then invoke the `<<` method on `an_array_parram` with `"rutabaga"` passed in as the argument. This mutates the original Array object and adds `"rutabaga"` to `an_array_param`, which is now `["pumpkins", "rutabage"]`.

On line 489 we invoke the `puts` method with the String `"My string looks like this now: #{my_string}"`, which uses string interpolation to insert the value of `my_string` into the String. This returns `nil` and outputs `"My string looks like this now: pumpkins"` to the screen.

On line 490 we again invoke the `puts` method in the same way, but this time we insert `my_array` into the String. This prints `"My array looks like this now: ["pumpkins", "rutabaga"]"`




# Example
```ruby
greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  
puts greetings
```

ON line 514 we intializez a local variable `greetings` and assign it to the Hash `{ a: 'hi'}`.

On line 515 we initialize local variable `informal_greeting` and assign it to the return value of calling `[]` on greetings, which is another way of calling the `select` method, so `informal_greeting = 'hi'`.

On line 516 we invoke the `<<` method on `informal_greeting` and pass the String `' there'` in as the argument. Because `<<` is a mutating method, it modifies the original String object by appending `' there'` to the end of it. Now `informal_greeting = 'hi there'`.

On line 518 we invoke `puts` and pass in  `informal_greeting` as the argument, which prints the string representation `"hi there"` to the screen.

On line 519 we invoke the `puts` method again and pass `greetings` in as the argument, which prints `"a=> 'hi there'"` to the screen.

The reason why `greetings` is modified, is because on line 515 `informal_greeting` is initialized to point to the String object `hi` within the `greetings` Hash. When we destructively modify `informal_greeting`, we are modifying the object stored in `greetings`.







# Example
```ruby
greetings = { a: 'hi' }
informal_greeting = {}

greetings.each { |key, value| informal_greeting[key] = value }
informal_greeting[:a] += ' there'

puts informal_greeting
puts greetings
```

On line 542, we initialize local variable `greetings` to the Hash value `{ a: 'hi' }`.

On line 543, we initialize local variable `informal_greeting` to the empty Hash `{}`.

On line 545, we invoke the `.each` method on `greetings`, which iterates through the `greetings` Hash and, as per the block we define on line 545 with `{..}`, assigns the key and value of the current iteration to method local variables `key`, and `value`, respectively. Then, we call `[]=` on `informal_greeting` which assigns the element referenced in `[]` and whatever object comes after the `=` to the value. In this case, method local variable `key` is passed into `[]` and method local variable `value` is passed in as the value. On the first (and only) iteration, this adds the key-value pair ` a: 'hi' ` to the `informal_greeting` Hash.

On line 546, we invoke the `+=` method on `informal_greeting[:a]` which reassigns the value `'hi'` to the String object `'hi there'`.






# Example
```ruby
a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a
```

on line 567 we intialize local variable `a` to the Integer value `7`.

On line 568 we initialize local variable `array` to the Array value `[1, 2, 3]`.

On line 570 we invoke the `.each` method on `array` and define a block as the argument, which spans line 570-572. Within this block, we assign a reference of the element of `array` in the current iteration to the method local variable `element`, and then on line 571 we invoke the `=` method on `a`, with method local variable `element` as the argument, which reassigns `a` to the value of `element` for each iteration. The last iteration assigns `a = 3`, which will be the new value of local variable `a`, but `.each` always returns the original collection so `[1, 2, 3]` is returned.

On line 574 we invoke the `puts` method and pass `a` in as the argument, which prints the string representation of `a` to the screen, `3`. This illustrates local variable scoping rules in Ruby, and that outer scope variables are accessible to inner blocks.







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
