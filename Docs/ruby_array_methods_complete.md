# Ruby Array Methods - Complete Reference

This document provides a comprehensive guide to all Ruby Array methods, including descriptions, examples, and common use cases.

## Table of Contents

1. [Quick Reference Table](#quick-reference-table)
2. [Detailed Method Explanations](#detailed-method-explanations)
   - [Creation and Initialization](#creation-and-initialization)
   - [Access and Retrieval](#access-and-retrieval)
   - [Modification Methods](#modification-methods)
   - [Iteration Methods](#iteration-methods)
   - [Filtering and Selection](#filtering-and-selection)
   - [Transformation Methods](#transformation-methods)
   - [Searching and Finding](#searching-and-finding)
   - [Sorting and Ordering](#sorting-and-ordering)
   - [Set Operations](#set-operations)
   - [Utility Methods](#utility-methods)

## Quick Reference Table

| Method                 | Description                                    |
| ---------------------- | ---------------------------------------------- | ----------------------------------------------- |
| `[]`                   | Creates a new array or accesses elements       |
| `<<`                   | Appends an element to the end of the array     |
| `&`                    | Set intersection - returns common elements     |
| `*`                    | Repetition or join operation                   |
| `+`                    | Array concatenation                            |
| `-`                    | Array difference - removes elements            |
| `<=>`                  | Comparison operator                            |
| `==`                   | Equality comparison                            |
| `[]`                   | Element access by index                        |
| `[]=`                  | Element assignment by index                    |
| `                      | `                                              | Set union - combines arrays removing duplicates |
| `any?`                 | Checks if any element meets condition          |
| `all?`                 | Checks if all elements meet condition          |
| `append`               | Adds elements to the end (alias for push)      |
| `assoc`                | Finds first array whose first element matches  |
| `at`                   | Returns element at given index                 |
| `bsearch`              | Binary search for element                      |
| `bsearch_index`        | Binary search returning index                  |
| `clear`                | Removes all elements                           |
| `collect`              | Transforms elements (alias for map)            |
| `collect!`             | Transforms elements in place (alias for map!)  |
| `combination`          | Returns combinations of elements               |
| `compact`              | Returns array with nil elements removed        |
| `compact!`             | Removes nil elements in place                  |
| `concat`               | Appends elements from other arrays             |
| `count`                | Counts elements matching condition             |
| `cycle`                | Repeats array elements infinitely              |
| `delete`               | Removes all instances of given value           |
| `delete_at`            | Removes element at specific index              |
| `delete_if`            | Removes elements matching condition            |
| `difference`           | Returns array minus specified elements         |
| `dig`                  | Safely accesses nested elements                |
| `drop`                 | Returns array without first n elements         |
| `drop_while`           | Drops elements while condition is true         |
| `each`                 | Iterates over each element                     |
| `each_index`           | Iterates over each index                       |
| `each_with_index`      | Iterates with element and index                |
| `empty?`               | Checks if array is empty                       |
| `eql?`                 | Checks if arrays are equal                     |
| `fetch`                | Gets element with optional default             |
| `fill`                 | Fills array with specified value               |
| `filter`               | Returns elements matching condition            |
| `filter!`              | Keeps only elements matching condition         |
| `find_index`           | Returns index of first matching element        |
| `first`                | Returns first element(s)                       |
| `flatten`              | Flattens nested arrays                         |
| `flatten!`             | Flattens nested arrays in place                |
| `frozen?`              | Checks if array is frozen                      |
| `hash`                 | Returns hash value                             |
| `include?`             | Checks if array contains element               |
| `index`                | Returns index of first occurrence              |
| `initialize_copy`      | Initializes array copy                         |
| `insert`               | Inserts elements at specified index            |
| `inspect`              | Returns string representation                  |
| `intersection`         | Returns common elements                        |
| `join`                 | Joins elements into string                     |
| `keep_if`              | Keeps only elements matching condition         |
| `last`                 | Returns last element(s)                        |
| `length`               | Returns number of elements                     |
| `map`                  | Transforms each element                        |
| `map!`                 | Transforms each element in place               |
| `max`                  | Returns maximum element                        |
| `max_by`               | Returns element with maximum value by block    |
| `min`                  | Returns minimum element                        |
| `min_by`               | Returns element with minimum value by block    |
| `minmax`               | Returns minimum and maximum elements           |
| `minmax_by`            | Returns min/max elements by block comparison   |
| `none?`                | Checks if no elements meet condition           |
| `one?`                 | Checks if exactly one element meets condition  |
| `pack`                 | Packs array into binary string                 |
| `permutation`          | Returns permutations of elements               |
| `pop`                  | Removes and returns last element(s)            |
| `prepend`              | Adds elements to the beginning                 |
| `product`              | Returns Cartesian product                      |
| `push`                 | Adds elements to the end                       |
| `rassoc`               | Finds first array whose second element matches |
| `reject`               | Returns elements not matching condition        |
| `reject!`              | Removes elements matching condition            |
| `repeated_combination` | Returns combinations with repetition           |
| `repeated_permutation` | Returns permutations with repetition           |
| `replace`              | Replaces array contents                        |
| `reverse`              | Returns reversed array                         |
| `reverse!`             | Reverses array in place                        |
| `reverse_each`         | Iterates in reverse order                      |
| `rindex`               | Returns index of last occurrence               |
| `rotate`               | Returns rotated array                          |
| `rotate!`              | Rotates array in place                         |
| `sample`               | Returns random element(s)                      |
| `select`               | Returns elements matching condition            |
| `select!`              | Keeps only elements matching condition         |
| `shift`                | Removes and returns first element(s)           |
| `shuffle`              | Returns shuffled array                         |
| `shuffle!`             | Shuffles array in place                        |
| `size`                 | Returns number of elements (alias for length)  |
| `slice`                | Returns subarray                               |
| `slice!`               | Removes and returns subarray                   |
| `sort`                 | Returns sorted array                           |
| `sort!`                | Sorts array in place                           |
| `sort_by`              | Sorts by block comparison                      |
| `sort_by!`             | Sorts in place by block comparison             |
| `sum`                  | Returns sum of elements                        |
| `take`                 | Returns first n elements                       |
| `take_while`           | Takes elements while condition is true         |
| `to_a`                 | Returns self                                   |
| `to_ary`               | Returns self                                   |
| `to_h`                 | Converts to hash                               |
| `to_s`                 | Returns string representation                  |
| `transpose`            | Transposes array of arrays                     |
| `union`                | Returns union of arrays                        |
| `uniq`                 | Returns array with duplicates removed          |
| `uniq!`                | Removes duplicates in place                    |
| `unshift`              | Adds elements to the beginning                 |
| `values_at`            | Returns elements at specified indices          |
| `zip`                  | Merges with other arrays element-wise          |

## Detailed Method Explanations

### Creation and Initialization

#### `Array.new`

Creates a new array with optional size and default value.

```ruby
# Empty array
arr = Array.new
puts arr.inspect
# Output: []

# Array with size
arr = Array.new(3)
puts arr.inspect
# Output: [nil, nil, nil]

# Array with size and default value
arr = Array.new(3, "hello")
puts arr.inspect
# Output: ["hello", "hello", "hello"]

# Array with block
arr = Array.new(3) { |i| i * 2 }
puts arr.inspect
# Output: [0, 2, 4]
```

**Common use cases:**

- Creating arrays of specific size
- Initializing with default values
- Creating arrays with calculated values

#### `[]` (Array literal)

Creates arrays using square bracket notation.

```ruby
arr = [1, 2, 3, 4, 5]
puts arr.inspect
# Output: [1, 2, 3, 4, 5]

mixed = ["string", 42, true, nil]
puts mixed.inspect
# Output: ["string", 42, true, nil]
```

**Common use cases:**

- Most common way to create arrays
- Creating arrays with known values

### Access and Retrieval

#### `[]` (Element access)

Accesses elements by index or range.

```ruby
arr = [10, 20, 30, 40, 50]

# Single element
puts arr[0]
# Output: 10

puts arr[-1]
# Output: 50

# Range
puts arr[1..3].inspect
# Output: [20, 30, 40]

# Start and length
puts arr[1, 3].inspect
# Output: [20, 30, 40]
```

**Common use cases:**

- Getting specific elements
- Extracting subarrays
- Negative indexing for end elements

#### `at`

Returns element at given index, nil if out of bounds.

```ruby
arr = [10, 20, 30]

puts arr.at(1)
# Output: 20

puts arr.at(10)
# Output: nil

puts arr.at(-1)
# Output: 30
```

**Common use cases:**

- Safe element access
- When you need nil for out-of-bounds instead of exception

#### `fetch`

Gets element with optional default value or block.

```ruby
arr = [10, 20, 30]

puts arr.fetch(1)
# Output: 20

puts arr.fetch(10, "default")
# Output: default

puts arr.fetch(10) { |i| "Index #{i} not found" }
# Output: Index 10 not found
```

**Common use cases:**

- Safe access with custom defaults
- Error handling for missing indices

#### `first`

Returns first element(s).

```ruby
arr = [1, 2, 3, 4, 5]

puts arr.first
# Output: 1

puts arr.first(3).inspect
# Output: [1, 2, 3]

puts [].first
# Output: nil
```

**Common use cases:**

- Getting first element
- Getting first n elements
- Safe access (returns nil for empty arrays)

#### `last`

Returns last element(s).

```ruby
arr = [1, 2, 3, 4, 5]

puts arr.last
# Output: 5

puts arr.last(3).inspect
# Output: [3, 4, 5]

puts [].last
# Output: nil
```

**Common use cases:**

- Getting last element
- Getting last n elements
- Safe access (returns nil for empty arrays)

#### `values_at`

Returns elements at specified indices.

```ruby
arr = [10, 20, 30, 40, 50]

puts arr.values_at(0, 2, 4).inspect
# Output: [10, 30, 50]

puts arr.values_at(1, -1, 10).inspect
# Output: [20, 50, nil]
```

**Common use cases:**

- Getting multiple specific elements
- Extracting elements at various positions

### Modification Methods

#### `<<` (Append)

Appends element to the end of array.

```ruby
arr = [1, 2, 3]
arr << 4
puts arr.inspect
# Output: [1, 2, 3, 4]

arr << [5, 6]
puts arr.inspect
# Output: [1, 2, 3, 4, [5, 6]]
```

**Common use cases:**

- Adding single elements
- Building arrays dynamically

#### `push`

Adds one or more elements to the end.

```ruby
arr = [1, 2, 3]
arr.push(4)
puts arr.inspect
# Output: [1, 2, 3, 4]

arr.push(5, 6, 7)
puts arr.inspect
# Output: [1, 2, 3, 4, 5, 6, 7]
```

**Common use cases:**

- Adding multiple elements at once
- Method chaining

#### `unshift` / `prepend`

Adds elements to the beginning.

```ruby
arr = [3, 4, 5]
arr.unshift(1, 2)
puts arr.inspect
# Output: [1, 2, 3, 4, 5]

arr = [3, 4, 5]
arr.prepend(1, 2)
puts arr.inspect
# Output: [1, 2, 3, 4, 5]
```

**Common use cases:**

- Adding elements to the front
- Building stacks or queues

#### `pop`

Removes and returns last element(s).

```ruby
arr = [1, 2, 3, 4, 5]

last = arr.pop
puts last
# Output: 5
puts arr.inspect
# Output: [1, 2, 3, 4]

last_two = arr.pop(2)
puts last_two.inspect
# Output: [3, 4]
puts arr.inspect
# Output: [1, 2]
```

**Common use cases:**

- Stack operations
- Removing elements from end

#### `shift`

Removes and returns first element(s).

```ruby
arr = [1, 2, 3, 4, 5]

first = arr.shift
puts first
# Output: 1
puts arr.inspect
# Output: [2, 3, 4, 5]

first_two = arr.shift(2)
puts first_two.inspect
# Output: [2, 3]
puts arr.inspect
# Output: [4, 5]
```

**Common use cases:**

- Queue operations
- Removing elements from beginning

#### `insert`

Inserts elements at specified index.

```ruby
arr = [1, 2, 5]
arr.insert(2, 3, 4)
puts arr.inspect
# Output: [1, 2, 3, 4, 5]

arr.insert(-1, 6)
puts arr.inspect
# Output: [1, 2, 3, 4, 5, 6]
```

**Common use cases:**

- Inserting at specific positions
- Adding multiple elements at once

#### `delete`

Removes all instances of given value.

```ruby
arr = [1, 2, 3, 2, 4, 2]
deleted = arr.delete(2)
puts deleted
# Output: 2
puts arr.inspect
# Output: [1, 3, 4]

# With block for not found
arr = [1, 3, 4]
result = arr.delete(5) { "not found" }
puts result
# Output: not found
```

**Common use cases:**

- Removing specific values
- Cleaning data

#### `delete_at`

Removes element at specific index.

```ruby
arr = [1, 2, 3, 4, 5]
deleted = arr.delete_at(2)
puts deleted
# Output: 3
puts arr.inspect
# Output: [1, 2, 4, 5]

puts arr.delete_at(10)
# Output: nil
```

**Common use cases:**

- Removing by position
- Array cleanup

#### `clear`

Removes all elements.

```ruby
arr = [1, 2, 3, 4, 5]
arr.clear
puts arr.inspect
# Output: []
puts arr.length
# Output: 0
```

**Common use cases:**

- Resetting arrays
- Memory cleanup

#### `fill`

Fills array with specified value.

```ruby
arr = [1, 2, 3, 4, 5]

# Fill entire array
arr.fill("x")
puts arr.inspect
# Output: ["x", "x", "x", "x", "x"]

# Fill with range
arr = [1, 2, 3, 4, 5]
arr.fill("x", 1..3)
puts arr.inspect
# Output: [1, "x", "x", "x", 5]

# Fill with start and length
arr = [1, 2, 3, 4, 5]
arr.fill("x", 2, 2)
puts arr.inspect
# Output: [1, 2, "x", "x", 5]

# Fill with block
arr = [1, 2, 3, 4, 5]
arr.fill { |i| i * i }
puts arr.inspect
# Output: [0, 1, 4, 9, 16]
```

**Common use cases:**

- Initializing arrays
- Resetting portions of arrays
- Creating patterns

### Iteration Methods

#### `each`

Iterates over each element.

```ruby
arr = [1, 2, 3, 4, 5]

arr.each { |element| puts "Element: #{element}" }
# Output:
# Element: 1
# Element: 2
# Element: 3
# Element: 4
# Element: 5

# Returns the original array
result = arr.each { |x| x * 2 }
puts result.inspect
# Output: [1, 2, 3, 4, 5]
```

**Common use cases:**

- Most common iteration method
- Side effects (printing, modifying external variables)

#### `each_with_index`

Iterates with element and index.

```ruby
arr = ["a", "b", "c"]

arr.each_with_index do |element, index|
  puts "#{index}: #{element}"
end
# Output:
# 0: a
# 1: b
# 2: c
```

**Common use cases:**

- When you need both element and position
- Creating indexed operations

#### `each_index`

Iterates over each index.

```ruby
arr = ["a", "b", "c"]

arr.each_index { |i| puts "Index #{i} has value #{arr[i]}" }
# Output:
# Index 0 has value a
# Index 1 has value b
# Index 2 has value c
```

**Common use cases:**

- When you only need indices
- Index-based operations

#### `reverse_each`

Iterates in reverse order.

```ruby
arr = [1, 2, 3, 4, 5]

arr.reverse_each { |element| puts element }
# Output:
# 5
# 4
# 3
# 2
# 1
```

**Common use cases:**

- Processing in reverse order
- Stack-like operations

### Filtering and Selection

#### `select` / `filter`

Returns elements matching condition.

```ruby
arr = [1, 2, 3, 4, 5, 6]

evens = arr.select { |n| n.even? }
puts evens.inspect
# Output: [2, 4, 6]

# filter is an alias
evens = arr.filter { |n| n.even? }
puts evens.inspect
# Output: [2, 4, 6]
```

**Common use cases:**

- Filtering data
- Finding elements meeting criteria

#### `reject`

Returns elements not matching condition.

```ruby
arr = [1, 2, 3, 4, 5, 6]

odds = arr.reject { |n| n.even? }
puts odds.inspect
# Output: [1, 3, 5]
```

**Common use cases:**

- Filtering out unwanted elements
- Opposite of select

#### `keep_if`

Keeps only elements matching condition (modifies in place).

```ruby
arr = [1, 2, 3, 4, 5, 6]
arr.keep_if { |n| n.even? }
puts arr.inspect
# Output: [2, 4, 6]
```

**Common use cases:**

- In-place filtering
- Memory-efficient filtering

#### `delete_if`

Removes elements matching condition.

```ruby
arr = [1, 2, 3, 4, 5, 6]
arr.delete_if { |n| n.even? }
puts arr.inspect
# Output: [1, 3, 5]
```

**Common use cases:**

- In-place removal
- Cleaning arrays

#### `compact`

Returns array with nil elements removed.

```ruby
arr = [1, nil, 2, nil, 3]
clean = arr.compact
puts clean.inspect
# Output: [1, 2, 3]
puts arr.inspect
# Output: [1, nil, 2, nil, 3]
```

**Common use cases:**

- Removing nil values
- Data cleaning

#### `compact!`

Removes nil elements in place.

```ruby
arr = [1, nil, 2, nil, 3]
arr.compact!
puts arr.inspect
# Output: [1, 2, 3]
```

**Common use cases:**

- In-place nil removal
- Memory-efficient cleaning

### Transformation Methods

#### `map` / `collect`

Transforms each element.

```ruby
arr = [1, 2, 3, 4, 5]

squared = arr.map { |n| n * n }
puts squared.inspect
# Output: [1, 4, 9, 16, 25]

# collect is an alias
squared = arr.collect { |n| n * n }
puts squared.inspect
# Output: [1, 4, 9, 16, 25]

# Original array unchanged
puts arr.inspect
# Output: [1, 2, 3, 4, 5]
```

**Common use cases:**

- Most common transformation method
- Converting data types
- Applying functions to all elements

#### `map!` / `collect!`

Transforms each element in place.

```ruby
arr = [1, 2, 3, 4, 5]
arr.map! { |n| n * n }
puts arr.inspect
# Output: [1, 4, 9, 16, 25]
```

**Common use cases:**

- In-place transformation
- Memory-efficient operations

#### `flatten`

Flattens nested arrays.

```ruby
arr = [1, [2, 3], [4, [5, 6]]]

flat = arr.flatten
puts flat.inspect
# Output: [1, 2, 3, 4, 5, 6]

# Specify depth
arr = [1, [2, [3, [4]]]]
flat = arr.flatten(2)
puts flat.inspect
# Output: [1, 2, 3, [4]]
```

**Common use cases:**

- Flattening nested structures
- Simplifying complex arrays

#### `transpose`

Transposes array of arrays.

```ruby
arr = [[1, 2, 3], [4, 5, 6]]
transposed = arr.transpose
puts transposed.inspect
# Output: [[1, 4], [2, 5], [3, 6]]
```

**Common use cases:**

- Matrix operations
- Reorganizing data

#### `zip`

Merges with other arrays element-wise.

```ruby
arr1 = [1, 2, 3]
arr2 = ["a", "b", "c"]
arr3 = [true, false, true]

zipped = arr1.zip(arr2, arr3)
puts zipped.inspect
# Output: [[1, "a", true], [2, "b", false], [3, "c", true]]

# With block
arr1.zip(arr2) { |num, letter| puts "#{num}-#{letter}" }
# Output:
# 1-a
# 2-b
# 3-c
```

**Common use cases:**

- Combining related arrays
- Creating paired data

### Searching and Finding

#### `include?`

Checks if array contains element.

```ruby
arr = [1, 2, 3, 4, 5]

puts arr.include?(3)
# Output: true

puts arr.include?(10)
# Output: false
```

**Common use cases:**

- Membership testing
- Validation

#### `index` / `find_index`

Returns index of first matching element.

```ruby
arr = [1, 2, 3, 2, 4]

puts arr.index(2)
# Output: 1

puts arr.find_index { |x| x > 3 }
# Output: 4

puts arr.index(10)
# Output: nil
```

**Common use cases:**

- Finding element positions
- Locating data

#### `rindex`

Returns index of last occurrence.

```ruby
arr = [1, 2, 3, 2, 4]

puts arr.rindex(2)
# Output: 3

puts arr.rindex { |x| x.even? }
# Output: 4
```

**Common use cases:**

- Finding last occurrence
- Reverse searching

#### `count`

Counts elements matching condition.

```ruby
arr = [1, 2, 3, 2, 4, 2]

puts arr.count
# Output: 6

puts arr.count(2)
# Output: 3

puts arr.count { |x| x.even? }
# Output: 4
```

**Common use cases:**

- Counting occurrences
- Statistical operations

#### `any?`

Checks if any element meets condition.

```ruby
arr = [1, 2, 3, 4, 5]

puts arr.any? { |x| x > 3 }
# Output: true

puts arr.any? { |x| x > 10 }
# Output: false

puts arr.any?
# Output: true (any truthy elements)

puts [nil, false].any?
# Output: false
```

**Common use cases:**

- Existence checking
- Validation

#### `all?`

Checks if all elements meet condition.

```ruby
arr = [2, 4, 6, 8]

puts arr.all? { |x| x.even? }
# Output: true

puts arr.all? { |x| x > 5 }
# Output: false

puts arr.all?
# Output: true (all truthy)

puts [1, 2, nil].all?
# Output: false
```

**Common use cases:**

- Universal conditions
- Validation

#### `none?`

Checks if no elements meet condition.

```ruby
arr = [1, 3, 5, 7]

puts arr.none? { |x| x.even? }
# Output: true

puts arr.none? { |x| x > 0 }
# Output: false

puts [nil, false].none?
# Output: true
```

**Common use cases:**

- Negative validation
- Absence checking

#### `one?`

Checks if exactly one element meets condition.

```ruby
arr = [1, 2, 3, 4, 5]

puts arr.one? { |x| x == 3 }
# Output: true

puts arr.one? { |x| x.even? }
# Output: false (2 and 4 are even)

puts [1, false, nil].one?
# Output: true (only 1 is truthy)
```

**Common use cases:**

- Uniqueness validation
- Single occurrence checking

### Sorting and Ordering

#### `sort`

Returns sorted array.

```ruby
arr = [3, 1, 4, 1, 5, 9]

sorted = arr.sort
puts sorted.inspect
# Output: [1, 1, 3, 4, 5, 9]

# Custom sort
words = ["banana", "apple", "cherry"]
sorted = words.sort { |a, b| a.length <=> b.length }
puts sorted.inspect
# Output: ["apple", "banana", "cherry"]
```

**Common use cases:**

- Ordering data
- Custom sorting logic

#### `sort!`

Sorts array in place.

```ruby
arr = [3, 1, 4, 1, 5, 9]
arr.sort!
puts arr.inspect
# Output: [1, 1, 3, 4, 5, 9]
```

**Common use cases:**

- In-place sorting
- Memory-efficient sorting

#### `sort_by`

Sorts by block comparison.

```ruby
words = ["banana", "apple", "cherry"]

# Sort by length
sorted = words.sort_by { |word| word.length }
puts sorted.inspect
# Output: ["apple", "banana", "cherry"]

# Sort by last character
sorted = words.sort_by { |word| word[-1] }
puts sorted.inspect
# Output: ["banana", "apple", "cherry"]
```

**Common use cases:**

- Complex sorting criteria
- Sorting by computed values

#### `reverse`

Returns reversed array.

```ruby
arr = [1, 2, 3, 4, 5]

reversed = arr.reverse
puts reversed.inspect
# Output: [5, 4, 3, 2, 1]

puts arr.inspect
# Output: [1, 2, 3, 4, 5]
```

**Common use cases:**

- Reversing order
- Creating reverse views

#### `reverse!`

Reverses array in place.

```ruby
arr = [1, 2, 3, 4, 5]
arr.reverse!
puts arr.inspect
# Output: [5, 4, 3, 2, 1]
```

**Common use cases:**

- In-place reversal
- Memory-efficient reversal

#### `shuffle`

Returns shuffled array.

```ruby
arr = [1, 2, 3, 4, 5]

shuffled = arr.shuffle
puts shuffled.inspect
# Output: [3, 1, 5, 2, 4] (random order)

# With random number generator
shuffled = arr.shuffle(random: Random.new(1))
puts shuffled.inspect
# Output: Consistent random order with seed
```

**Common use cases:**

- Randomizing order
- Creating random samples

#### `shuffle!`

Shuffles array in place.

```ruby
arr = [1, 2, 3, 4, 5]
arr.shuffle!
puts arr.inspect
# Output: [2, 5, 1, 4, 3] (random order)
```

**Common use cases:**

- In-place shuffling
- Memory-efficient randomization

#### `sample`

Returns random element(s).

```ruby
arr = [1, 2, 3, 4, 5]

puts arr.sample
# Output: 3 (random)

puts arr.sample(3).inspect
# Output: [2, 5, 1] (random selection)

puts arr.sample(10).inspect
# Output: [4, 1, 3, 5, 2] (all elements if n > length)
```

**Common use cases:**

- Random selection
- Sampling data

### Set Operations

#### `+` (Union)

Concatenates arrays.

```ruby
arr1 = [1, 2, 3]
arr2 = [4, 5, 6]

result = arr1 + arr2
puts result.inspect
# Output: [1, 2, 3, 4, 5, 6]

# Keeps duplicates
arr1 = [1, 2, 3]
arr2 = [3, 4, 5]
result = arr1 + arr2
puts result.inspect
# Output: [1, 2, 3, 3, 4, 5]
```

**Common use cases:**

- Combining arrays
- Creating larger datasets

#### `-` (Difference)

Returns array minus specified elements.

```ruby
arr1 = [1, 2, 3, 4, 5]
arr2 = [2, 4]

result = arr1 - arr2
puts result.inspect
# Output: [1, 3, 5]

# Removes all occurrences
arr1 = [1, 2, 2, 3, 4, 4, 5]
arr2 = [2, 4]
result = arr1 - arr2
puts result.inspect
# Output: [1, 3, 5]
```

**Common use cases:**

- Removing elements
- Set difference operations

#### `&` (Intersection)

Returns common elements.

```ruby
arr1 = [1, 2, 3, 4, 5]
arr2 = [3, 4, 5, 6, 7]

result = arr1 & arr2
puts result.inspect
# Output: [3, 4, 5]

# Removes duplicates
arr1 = [1, 1, 2, 3, 3]
arr2 = [1, 3, 3, 4]
result = arr1 & arr2
puts result.inspect
# Output: [1, 3]
```

**Common use cases:**

- Finding common elements
- Set intersection operations

#### `|` (Union)

Returns union removing duplicates.

```ruby
arr1 = [1, 2, 3]
arr2 = [3, 4, 5]

result = arr1 | arr2
puts result.inspect
# Output: [1, 2, 3, 4, 5]

# Removes duplicates within each array too
arr1 = [1, 1, 2, 3]
arr2 = [3, 4, 4, 5]
result = arr1 | arr2
puts result.inspect
# Output: [1, 2, 3, 4, 5]
```

**Common use cases:**

- Set union operations
- Combining unique elements

#### `uniq`

Returns array with duplicates removed.

```ruby
arr = [1, 2, 2, 3, 3, 3, 4]

unique = arr.uniq
puts unique.inspect
# Output: [1, 2, 3, 4]

# With block
words = ["a", "A", "b", "B"]
unique = words.uniq { |w| w.downcase }
puts unique.inspect
# Output: ["a", "b"]
```

**Common use cases:**

- Removing duplicates
- Data deduplication

#### `uniq!`

Removes duplicates in place.

```ruby
arr = [1, 2, 2, 3, 3, 3, 4]
arr.uniq!
puts arr.inspect
# Output: [1, 2, 3, 4]
```

**Common use cases:**

- In-place deduplication
- Memory-efficient uniqueness

### Utility Methods

#### `length` / `size`

Returns number of elements.

```ruby
arr = [1, 2, 3, 4, 5]

puts arr.length
# Output: 5

puts arr.size
# Output: 5

puts [].length
# Output: 0
```

**Common use cases:**

- Getting array size
- Validation and bounds checking

#### `empty?`

Checks if array is empty.

```ruby
puts [].empty?
# Output: true

puts [1, 2, 3].empty?
# Output: false
```

**Common use cases:**

- Validation
- Conditional logic

#### `join`

Joins elements into string.

```ruby
arr = [1, 2, 3, 4, 5]

puts arr.join
# Output: 12345

puts arr.join(", ")
# Output: 1, 2, 3, 4, 5

puts arr.join(" - ")
# Output: 1 - 2 - 3 - 4 - 5
```

**Common use cases:**

- Converting to strings
- Creating formatted output

#### `to_s` / `inspect`

String representations.

```ruby
arr = [1, "hello", nil, true]

puts arr.to_s
# Output: [1, "hello", nil, true]

puts arr.inspect
# Output: [1, "hello", nil, true]

# to_s is alias for inspect for arrays
puts arr.to_s == arr.inspect
# Output: true
```

**Common use cases:**

- Debugging
- String conversion

#### `sum`

Returns sum of elements.

```ruby
arr = [1, 2, 3, 4, 5]

puts arr.sum
# Output: 15

# With initial value
puts arr.sum(10)
# Output: 25

# With block
words = ["hello", "world"]
puts words.sum("") { |word| word.upcase }
# Output: HELLOWORLD
```

**Common use cases:**

- Mathematical operations
- Aggregation

#### `min` / `max`

Returns minimum/maximum elements.

```ruby
arr = [3, 1, 4, 1, 5, 9]

puts arr.min
# Output: 1

puts arr.max
# Output: 9

# With block
words = ["banana", "apple", "cherry"]
puts words.min { |a, b| a.length <=> b.length }
# Output: apple

puts words.max { |a, b| a.length <=> b.length }
# Output: banana
```

**Common use cases:**

- Finding extremes
- Statistical operations

#### `minmax`

Returns minimum and maximum.

```ruby
arr = [3, 1, 4, 1, 5, 9]

puts arr.minmax.inspect
# Output: [1, 9]

words = ["banana", "apple", "cherry"]
puts words.minmax { |a, b| a.length <=> b.length }.inspect
# Output: ["apple", "banana"]
```

**Common use cases:**

- Getting range
- Statistical analysis

#### `take`

Returns first n elements.

```ruby
arr = [1, 2, 3, 4, 5]

puts arr.take(3).inspect
# Output: [1, 2, 3]

puts arr.take(0).inspect
# Output: []

puts arr.take(10).inspect
# Output: [1, 2, 3, 4, 5]
```

**Common use cases:**

- Getting prefixes
- Limiting results

#### `drop`

Returns array without first n elements.

```ruby
arr = [1, 2, 3, 4, 5]

puts arr.drop(2).inspect
# Output: [3, 4, 5]

puts arr.drop(0).inspect
# Output: [1, 2, 3, 4, 5]

puts arr.drop(10).inspect
# Output: []
```

**Common use cases:**

- Skipping elements
- Getting suffixes

#### `take_while`

Takes elements while condition is true.

```ruby
arr = [1, 2, 3, 4, 5, 4, 3, 2, 1]

puts arr.take_while { |x| x < 4 }.inspect
# Output: [1, 2, 3]

puts arr.take_while { |x| x < 10 }.inspect
# Output: [1, 2, 3, 4, 5, 4, 3, 2, 1]
```

**Common use cases:**

- Conditional prefix extraction
- Processing until condition fails

#### `drop_while`

Drops elements while condition is true.

```ruby
arr = [1, 2, 3, 4, 5, 4, 3, 2, 1]

puts arr.drop_while { |x| x < 4 }.inspect
# Output: [4, 5, 4, 3, 2, 1]

puts arr.drop_while { |x| x < 0 }.inspect
# Output: [1, 2, 3, 4, 5, 4, 3, 2, 1]
```

**Common use cases:**

- Skipping initial elements
- Processing after condition fails

#### `slice`

Returns subarray (alias for []).

```ruby
arr = [1, 2, 3, 4, 5]

puts arr.slice(1, 3).inspect
# Output: [2, 3, 4]

puts arr.slice(2..4).inspect
# Output: [3, 4, 5]

puts arr.slice(-2, 2).inspect
# Output: [4, 5]
```

**Common use cases:**

- Extracting subarrays
- Getting ranges of elements

#### `slice!`

Removes and returns subarray.

```ruby
arr = [1, 2, 3, 4, 5]

removed = arr.slice!(1, 2)
puts removed.inspect
# Output: [2, 3]
puts arr.inspect
# Output: [1, 4, 5]
```

**Common use cases:**

- Extracting and removing portions
- Array splitting

#### `rotate`

Returns rotated array.

```ruby
arr = [1, 2, 3, 4, 5]

puts arr.rotate.inspect
# Output: [2, 3, 4, 5, 1]

puts arr.rotate(2).inspect
# Output: [3, 4, 5, 1, 2]

puts arr.rotate(-1).inspect
# Output: [5, 1, 2, 3, 4]
```

**Common use cases:**

- Circular shifting
- Reordering elements

#### `concat`

Appends elements from other arrays.

```ruby
arr1 = [1, 2, 3]
arr2 = [4, 5]
arr3 = [6, 7]

arr1.concat(arr2, arr3)
puts arr1.inspect
# Output: [1, 2, 3, 4, 5, 6, 7]
```

**Common use cases:**

- Combining multiple arrays
- Building large arrays

#### `replace`

Replaces array contents.

```ruby
arr = [1, 2, 3]
arr.replace([4, 5, 6, 7])
puts arr.inspect
# Output: [4, 5, 6, 7]
```

**Common use cases:**

- Complete array replacement
- Resetting array contents

This comprehensive guide covers all major Ruby array methods with practical examples and common use cases. Each method includes the expected output to help you understand exactly how they work in practice.
