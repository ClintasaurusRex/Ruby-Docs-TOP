# Ruby Arrays: A Practical Guide

## Table of Contents

1. [What is an Array?](#what-is-an-array)
2. [Accessing Elements](#accessing-elements)
3. [Modifying Arrays](#modifying-arrays)
4. [Array Methods](#array-methods)
5. [Mutating the Caller vs Non-Destructive Methods](#mutating-the-caller-vs-non-destructive-methods)
6. [Common Array Methods](#common-array-methods)
7. [to_s and String Interpolation](#to_s-and-string-interpolation)
8. [Iterating Over an Array](#iterating-over-an-array)
9. [each vs map](#each-vs-map)
10. [Nested Arrays](#nested-arrays)
11. [Comparing Arrays](#comparing-arrays)
12. [Summary](#summary)

---

## What is an Array?

An array is an ordered list of elements that can be of any type (don't worry about "of any type" yet, you'll see more in the examples that follow). You can define an array by placing a list of elements between brackets like so:

```ruby
[1, 'Bob', 4.33, 'another string']
```

You'll notice that the above array has strings, an integer, and a float. Arrays can have anything in them (even other arrays!). Now we need to save this array in a variable so we can play with it.

```ruby
array = [1, 'Bob', 4.33, 'another string']
```

We'd like to find the first element of the array. We can just use the `first` method:

```ruby
array.first #=> 1
```

What about the last element?

```ruby
array.last #=> "another string"
```

But what if we want to find the third element?

Arrays are what we call indexed lists. That means that each slot in an array is numbered. You can reference any element by its index number. The syntax to do this is typing the array name with the index in brackets `[]` directly following. Let's try it out.

```ruby
array[3] #=> "another string"
```

Are you surprised? You probably thought that you were going to get the number 4.33 back, but instead, you got "another string". That's because all array indices start with the number 0. Try this in irb:

```ruby
array[2] #=> 4.33
```

If we know the length of an array, what's the index of the last element going to be?

> The last index is always `array.length - 1`.

---

## Accessing Elements

You can access elements using positive or negative indices, and with methods like `first` and `last`:

```ruby
array[0]      #=> 1
array[-1]     #=> "another string"
array.first   #=> 1
array.last    #=> "another string"
```

---

## Modifying Arrays

Let's say you wanted to add or remove something from an array. There are a few methods that will help you perform these operations.

To remove the last item:

```ruby
array.pop #=> "another string"
array     #=> [1, "Bob", 4.33]
```

To add an item to the end:

```ruby
array.push("another string") #=> [1, "Bob", 4.33, "another string"]
# or
array << "another string"    #=> [1, "Bob", 4.33, "another string"]
```

Both `push` and `<<` mutate the caller (the original array is modified).

---

## Array Methods

Ruby arrays have many useful methods. Here are a few:

- `pop` removes and returns the last element.
- `push` and `<<` add elements to the end.
- `shift` removes and returns the first element.
- `unshift` adds elements to the beginning.
- `delete_at(index)` removes the element at the given index.
- `delete(value)` removes all instances of the value.
- `uniq` returns a new array with duplicates removed (non-destructive).
- `uniq!` removes duplicates in place (destructive).
- `include?` checks if a value is present.
- `flatten` returns a one-dimensional array.
- `each_index` and `each_with_index` for index-based iteration.
- `sort` returns a sorted array.
- `product` combines arrays in all possible pairs.

Example:

```ruby
a = [1, 2, 3, 4]
a.map { |num| num**2 } #=> [1, 4, 9, 16]
a.delete_at(1)        #=> 2
a                     #=> [1, 3, 4]
```

---

## Mutating the Caller vs Non-Destructive Methods

Some methods, like `pop`, `push`, `<<`, `delete_at`, `delete`, and `uniq!`, mutate the caller (the original array is changed). Others, like `map`, `select`, `uniq`, and `sort`, return a new array and do not modify the original.

The bang suffix (`!`) at the end of a method name usually indicates that the method will mutate the caller, but not always. Some destructive methods do not have a `!` (e.g., `pop`, `push`). Always check the documentation or test in irb if you are unsure.

Example:

```ruby
def mutate(arr)
  arr.pop
end

def not_mutate(arr)
  arr.select { |i| i > 3 }
end

a = [1, 2, 3, 4, 5, 6]
mutate(a)
not_mutate(a)
puts a #=> 1, 2, 3, 4, 5
```

---

## Common Array Methods

- `include?` checks if a value is present:
  ```ruby
  a = [1, 2, 3, 4, 5]
  a.include?(3) #=> true
  a.include?(6) #=> false
  ```
- `flatten` turns nested arrays into a one-dimensional array:
  ```ruby
  a = [1, 2, [3, 4, 5], [6, 7]]
  a.flatten #=> [1, 2, 3, 4, 5, 6, 7]
  ```
- `each_index` and `each_with_index` for index-based iteration:
  ```ruby
  a = [1, 2, 3, 4, 5]
  a.each_index { |i| puts "This is index #{i}" }
  a.each_with_index { |val, idx| puts "#{idx+1}. #{val}" }
  ```
- `sort` returns a sorted array:
  ```ruby
  a = [5, 3, 8, 2, 4, 1]
  a.sort #=> [1, 2, 3, 4, 5, 8]
  ```
- `product` combines arrays:
  ```ruby
  [1, 2, 3].product([4, 5]) #=> [[1, 4], [1, 5], [2, 4], [2, 5], [3, 4], [3, 5]]
  ```

---

## to_s and String Interpolation

The `to_s` method is used to create a string representation of an array. Ruby does this behind the scenes when you use string interpolation to print an array to the screen.

```ruby
a = [1, 2, 3]
"It's as easy as #{a}" #=> "It's as easy as [1, 2, 3]"
```

---

## Iterating Over an Array

Ruby provides many ways to iterate over arrays. The most common are `each`, `map`, and `select`.

```ruby
a = [1, 2, 3]
a.each { |e| puts e } # prints each element
a.map { |x| x**2 }    #=> [1, 4, 9]
a.select { |n| n > 1 } #=> [2, 3]
```

- `each` returns the original array.
- `map` returns a new array with the results of the block.
- `select` returns a new array with elements for which the block returns true.

---

## each vs map

- `each` is for iteration (side effects, like printing or modifying external variables).
- `map` is for transformation (returns a new array with the results of the block).

```ruby
a = [1, 2, 3]
a.each { |e| puts e + 2 } # prints 3, 4, 5, returns [1, 2, 3]
a.map { |x| x**2 }        #=> [1, 4, 9]
```

If no block is given, both return an Enumerator.

---

## Nested Arrays

Arrays can contain other arrays:

```ruby
teams = [['Joe', 'Steve'], ['Frank', 'Molly'], ['Dan', 'Sara']]
teams[1] #=> ["Frank", "Molly"]
```

You can use iterator methods on nested arrays. For example, `teams.each` will pass each sub-array to the block.

---

## Comparing Arrays

Arrays can be compared for equality using `==`. Order matters:

```ruby
a = [1, 2, 3]
b = [2, 3, 4]
a == b #=> false
b.pop
b.unshift(1)
a == b #=> true
```

---

## Summary

Arrays are an extremely valuable data set. They can be used to store many different kinds of data and you'll see them very often in the wild. Ruby's array class has lots of built-in methods that can be used to perform many of the daily functions that programmers use. Practice working with arrays to get comfortable with their power and flexibility.
