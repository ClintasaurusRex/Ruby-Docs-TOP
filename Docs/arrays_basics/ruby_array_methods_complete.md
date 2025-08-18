# Ruby Array Methods - Complete Reference

This document provides a comprehensive guide to all Ruby Array methods, including descriptions, examples, and common use cases.

## Quick Reference & Navigation

| Method                                          | Description                                               |
| ----------------------------------------------- | --------------------------------------------------------- | ----------------------------------------------- |
| **Creation and Initialization**                 |
| [`Array.new`](#arraynew)                        | Creates a new array with optional size and default values |
| [`[]`](#-array-literal)                         | Creates a new array or accesses elements                  |
| **Access and Retrieval**                        |
| [`[]`](#-element-access)                        | Element access by index                                   |
| [`at`](#at)                                     | Returns element at given index                            |
| [`fetch`](#fetch)                               | Gets element with optional default                        |
| [`first`](#first)                               | Returns first element(s)                                  |
| [`last`](#last)                                 | Returns last element(s)                                   |
| [`values_at`](#values_at)                       | Returns elements at specified indices                     |
| [`dig`](#dig)                                   | Safely accesses nested elements                           |
| **Modification Methods**                        |
| [`<<`](#-append)                                | Appends an element to the end of the array                |
| [`push`](#push)                                 | Adds elements to the end                                  |
| [`unshift`](#unshift--prepend)                  | Adds elements to the beginning                            |
| [`prepend`](#unshift--prepend)                  | Adds elements to the beginning (alias for unshift)        |
| [`pop`](#pop)                                   | Removes and returns last element(s)                       |
| [`shift`](#shift)                               | Removes and returns first element(s)                      |
| [`insert`](#insert)                             | Inserts elements at specified index                       |
| [`delete`](#delete)                             | Removes all instances of given value                      |
| [`delete_at`](#delete_at)                       | Removes element at specific index                         |
| [`clear`](#clear)                               | Removes all elements                                      |
| [`fill`](#fill)                                 | Fills array with specified value                          |
| [`[]=`](#)                                      | Element assignment by index                               |
| **Iteration Methods**                           |
| [`each`](#each)                                 | Iterates over each element                                |
| [`each_with_index`](#each_with_index)           | Iterates with element and index                           |
| [`each_index`](#each_index)                     | Iterates over each index                                  |
| [`reverse_each`](#reverse_each)                 | Iterates in reverse order                                 |
| **Filtering and Selection**                     |
| [`select`](#select--filter)                     | Returns elements matching condition                       |
| [`filter`](#select--filter)                     | Returns elements matching condition                       |
| [`reject`](#reject)                             | Returns elements not matching condition                   |
| [`keep_if`](#keep_if)                           | Keeps only elements matching condition                    |
| [`delete_if`](#delete_if)                       | Removes elements matching condition                       |
| [`compact`](#compact)                           | Returns array with nil elements removed                   |
| [`compact!`](#compact)                          | Removes nil elements in place                             |
| [`filter!`](#filter)                            | Keeps only elements matching condition                    |
| [`select!`](#select)                            | Keeps only elements matching condition                    |
| [`reject!`](#reject)                            | Removes elements matching condition                       |
| **Transformation Methods**                      |
| [`map`](#map--collect)                          | Transforms each element                                   |
| [`collect`](#map--collect)                      | Transforms elements (alias for map)                       |
| [`map!`](#map--collect)                         | Transforms each element in place                          |
| [`collect!`](#map--collect)                     | Transforms elements in place (alias for map!)             |
| [`flatten`](#flatten)                           | Flattens nested arrays                                    |
| [`flatten!`](#flatten)                          | Flattens nested arrays in place                           |
| [`transpose`](#transpose)                       | Transposes array of arrays                                |
| [`zip`](#zip)                                   | Merges with other arrays element-wise                     |
| **Searching and Finding**                       |
| [`include?`](#include)                          | Checks if array contains element                          |
| [`index`](#index--find_index)                   | Returns index of first occurrence                         |
| [`find_index`](#index--find_index)              | Returns index of first matching element                   |
| [`rindex`](#rindex)                             | Returns index of last occurrence                          |
| [`count`](#count)                               | Counts elements matching condition                        |
| [`any?`](#any)                                  | Checks if any element meets condition                     |
| [`all?`](#all)                                  | Checks if all elements meet condition                     |
| [`none?`](#none)                                | Checks if no elements meet condition                      |
| [`one?`](#one)                                  | Checks if exactly one element meets condition             |
| **Sorting and Ordering**                        |
| [`sort`](#sort)                                 | Returns sorted array                                      |
| [`sort!`](#sort)                                | Sorts array in place                                      |
| [`sort_by`](#sort_by)                           | Sorts by block comparison                                 |
| [`sort_by!`](#sort_by)                          | Sorts in place by block comparison                        |
| [`reverse`](#reverse)                           | Returns reversed array                                    |
| [`reverse!`](#reverse)                          | Reverses array in place                                   |
| [`shuffle`](#shuffle)                           | Returns shuffled array                                    |
| [`shuffle!`](#shuffle)                          | Shuffles array in place                                   |
| [`sample`](#sample)                             | Returns random element(s)                                 |
| **Set Operations**                              |
| [`+`](#-union)                                  | Array concatenation                                       |
| [`-`](#--difference)                            | Array difference - removes elements                       |
| [`&`](#-intersection)                           | Set intersection - returns common elements                |
| [`                                              | `](#-union-1)                                             | Set union - combines arrays removing duplicates |
| [`uniq`](#uniq)                                 | Returns array with duplicates removed                     |
| [`uniq!`](#uniq)                                | Removes duplicates in place                               |
| [`intersection`](#intersection)                 | Returns common elements                                   |
| [`union`](#union)                               | Returns union of arrays                                   |
| [`difference`](#difference)                     | Returns array minus specified elements                    |
| **Utility Methods**                             |
| [`length`](#length)                             | Returns number of elements                                |
| [`size`](#length)                               | Returns number of elements (alias for length)             |
| [`empty?`](#empty)                              | Checks if array is empty                                  |
| [`to_a`](#to_a)                                 | Returns self                                              |
| [`to_ary`](#to_a)                               | Returns self                                              |
| [`to_h`](#to_h)                                 | Converts to hash                                          |
| [`to_s`](#to_s)                                 | Returns string representation                             |
| [`inspect`](#inspect)                           | Returns string representation                             |
| [`join`](#join)                                 | Joins elements into string                                |
| [`frozen?`](#frozen)                            | Checks if array is frozen                                 |
| [`hash`](#hash-1)                               | Returns hash value                                        |
| [`eql?`](#eql)                                  | Checks if arrays are equal                                |
| [`==`](#)                                       | Equality comparison                                       |
| [`<=>`](#)                                      | Comparison operator                                       |
| **Advanced Methods**                            |
| [`concat`](#concat)                             | Appends elements from other arrays                        |
| [`replace`](#replace)                           | Replaces array contents                                   |
| [`rotate`](#rotate)                             | Returns rotated array                                     |
| [`rotate!`](#rotate)                            | Rotates array in place                                    |
| [`slice`](#slice)                               | Returns subarray                                          |
| [`slice!`](#slice)                              | Removes and returns subarray                              |
| [`take`](#take)                                 | Returns first n elements                                  |
| [`drop`](#drop)                                 | Returns array without first n elements                    |
| [`take_while`](#take_while)                     | Takes elements while condition is true                    |
| [`drop_while`](#drop_while)                     | Drops elements while condition is true                    |
| [`min`](#min)                                   | Returns minimum element                                   |
| [`max`](#max)                                   | Returns maximum element                                   |
| [`min_by`](#min_by)                             | Returns element with minimum value by block               |
| [`max_by`](#max_by)                             | Returns element with maximum value by block               |
| [`minmax`](#minmax)                             | Returns minimum and maximum elements                      |
| [`minmax_by`](#minmax_by)                       | Returns min/max elements by block comparison              |
| [`sum`](#sum)                                   | Returns sum of elements                                   |
| [`product`](#product)                           | Returns Cartesian product                                 |
| [`permutation`](#permutation)                   | Returns permutations of elements                          |
| [`combination`](#combination)                   | Returns combinations of elements                          |
| [`repeated_permutation`](#repeated_permutation) | Returns permutations with repetition                      |
| [`repeated_combination`](#repeated_combination) | Returns combinations with repetition                      |
| [`cycle`](#cycle)                               | Repeats array elements infinitely                         |
| [`pack`](#pack)                                 | Packs array into binary string                            |
| [`assoc`](#assoc)                               | Finds first array whose first element matches             |
| [`rassoc`](#rassoc)                             | Finds first array whose second element matches            |
| [`bsearch`](#bsearch)                           | Binary search for element                                 |
| [`bsearch_index`](#bsearch_index)               | Binary search returning index                             |
| [`initialize_copy`](#initialize_copy)           | Initializes array copy                                    |
| [`*`](#)                                        | Repetition or join operation                              |
| [`append`](#append)                             | Adds elements to the end (alias for push)                 |

---

## Detailed Method Explanations

### Creation and Initialization

#### `Array.new`

The Array constructor method provides flexible ways to create new arrays with predetermined characteristics. Unlike array literals, this method allows you to dynamically specify the size and populate elements using default values or block expressions. When called with no arguments, it creates an empty array. With a size parameter, it creates an array of that length filled with nil values. Adding a default value parameter fills all positions with that same object (be careful with mutable objects as they share the same reference). The most powerful form uses a block that receives the index and returns a computed value for each position.

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

- Creating arrays when the size is determined at runtime
- Initializing data structures with computed values based on index position
- Pre-allocating arrays for performance in loops that will populate them
- Creating arrays with mathematical sequences or patterns

#### `[]` (Array literal)

The array literal syntax using square brackets is the most fundamental and commonly used method for creating arrays in Ruby. This syntax provides an intuitive way to define arrays with known elements at compile time. Ruby automatically infers the array type and can hold heterogeneous data types within the same array. The literal syntax is not only readable but also the most performant way to create arrays with predefined content, as it doesn't involve method calls or dynamic allocation logic.

```ruby
arr = [1, 2, 3, 4, 5]
puts arr.inspect
# Output: [1, 2, 3, 4, 5]

mixed = ["string", 42, true, nil]
puts mixed.inspect
# Output: ["string", 42, true, nil]
```

**Common use cases:**

- Creating arrays with known, static content during development
- Defining configuration arrays, lookup tables, or constant data sets
- Creating arrays for testing with predictable data
- Building arrays where the content is determined at code-writing time

### Access and Retrieval

#### `[]` (Element access)

The element access operator is Ruby's primary method for retrieving data from arrays using zero-based indexing. This method supports multiple access patterns: single element access using positive or negative indices, range-based access for extracting subarrays, and start-plus-length notation for flexible subarray extraction. Negative indices count backward from the end, making it easy to access elements from the tail. When accessing ranges or using start-plus-length, it returns a new array containing the specified elements. Out-of-bounds access returns nil for safety rather than raising exceptions.

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

- Retrieving individual elements by position (first, last, or specific index)
- Extracting subarrays for processing subsets of data
- Implementing safe bounds checking with negative indexing
- Creating array slices for pagination or chunked processing

#### `at`

The `at` method provides a safe alternative to bracket notation for element access, with the key difference being its behavior when accessing out-of-bounds indices. Unlike bracket access which can raise exceptions in certain contexts, `at` consistently returns nil for invalid indices, making it ideal for defensive programming. It accepts both positive and negative indices, with negative values counting backward from the end of the array. This method is particularly useful when you're unsure about array bounds and want to avoid exception handling.

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

- Safe element access when array bounds are uncertain
- Defensive programming to avoid index errors in production code
- Implementing algorithms that need to handle boundary conditions gracefully
- Situations where nil is a meaningful "not found" indicator

#### `fetch`

The `fetch` method extends safe element access by providing sophisticated fallback mechanisms when accessing out-of-bounds indices. Unlike simple bracket notation, `fetch` allows you to specify default values or execute blocks to handle missing elements. When called with just an index, it raises an IndexError for out-of-bounds access, making it stricter than bracket notation. However, when provided with a default value or block, it becomes more flexible, allowing you to define custom behavior for edge cases. The block form is particularly powerful as it receives the invalid index as a parameter, enabling context-aware error handling.

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

- Implementing robust data access with meaningful default values
- Creating configuration systems where missing keys have sensible fallbacks
- Building fault-tolerant algorithms that degrade gracefully
- Debugging scenarios where you need to know which index caused the failure

#### `first`

The `first` method provides convenient access to the beginning elements of an array with flexible behavior based on the arguments provided. When called without arguments, it returns the first element or nil for empty arrays, making it safer than direct index access. When called with a numeric argument, it returns an array containing the first n elements, which is invaluable for pagination, sampling, or limiting result sets. The method never raises exceptions and handles edge cases gracefully, such as requesting more elements than exist in the array.

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

- Implementing "peek" operations to examine data without modification
- Creating pagination systems where you need the first n results
- Safe access to the beginning of potentially empty collections
- Implementing preview functionality where you show limited initial data

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

The append operator (`<<`) provides the most concise and Ruby-idiomatic way to add a single element to the end of an array. This operator modifies the original array in place and returns the modified array, making it perfect for method chaining. Unlike `push`, which can accept multiple arguments, `<<` is designed specifically for single-element additions and treats its argument as a single entity, even if it's an array (which will be nested rather than flattened). The operator is highly performant for building arrays incrementally and is commonly seen in Ruby code for its brevity and expressiveness.

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

- Building arrays incrementally in loops where you add one element at a time
- Creating fluent interfaces where method chaining improves readability
- Accumulating results in iterative algorithms or data processing pipelines
- Implementing stack-like data structures where elements are added to the top

#### `push`

The `push` method is the most flexible way to add elements to the end of an array, capable of accepting multiple arguments in a single call. Unlike the `<<` operator, `push` can add several elements simultaneously, making it more efficient than multiple append operations. The method modifies the original array in place and returns the modified array, enabling method chaining. When adding multiple elements, they are added in the order they appear in the argument list. This method is particularly valuable when you have a variable number of elements to add or when you're combining arrays by adding all elements from one array to another.

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

- Adding multiple elements efficiently in a single operation
- Implementing variadic functions that accept any number of elements
- Building arrays from method parameters or splat arguments
- Merging arrays by pushing all elements from one array onto another

#### `unshift` / `prepend`

The `unshift` and `prepend` methods add elements to the beginning of an array, with `prepend` being the more modern and semantically clearer alias. These methods accept multiple arguments and insert them at the front of the array in the order they appear, shifting all existing elements to higher indices. This operation is more expensive than adding to the end (O(n) vs O(1)) because it requires moving all existing elements, but it's essential for implementing queue-like data structures or when chronological order matters. Both methods modify the original array and return it, supporting method chaining patterns.

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

- Implementing queue data structures where elements are added to the front
- Maintaining chronological order when newer items should appear first
- Building priority systems where high-priority items are inserted at the beginning
- Creating undo/redo functionality where recent actions appear at the top

#### `pop`

The `pop` method implements the classic stack operation of removing and returning elements from the end of an array. When called without arguments, it removes and returns the last element, or nil if the array is empty. With a numeric argument, it removes and returns an array containing the last n elements. This method is highly efficient (O(1) for single element, O(n) for multiple elements) because it doesn't require shifting other elements. The destructive nature of `pop` makes it perfect for implementing stack data structures, parsing algorithms that consume data, or any scenario where you need to process elements in reverse order while removing them.

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

- Implementing stack data structures (LIFO - Last In, First Out)
- Processing arrays in reverse order while consuming elements
- Implementing undo functionality where the most recent action is reversed first
- Parsing algorithms that need to backtrack by removing recently processed elements

#### `shift`

The `shift` method removes and returns elements from the beginning of an array, implementing the dequeue operation fundamental to queue data structures. When called without arguments, it removes and returns the first element, or nil for empty arrays. With a numeric argument, it removes and returns an array containing the first n elements. Unlike `pop`, `shift` operations are more expensive (O(n)) because all remaining elements must be moved to fill the gap. Despite this performance consideration, `shift` is essential for implementing FIFO (First In, First Out) queues, processing data streams in chronological order, or implementing breadth-first algorithms.

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

- Implementing queue data structures (FIFO - First In, First Out)
- Processing data streams where order of arrival matters
- Implementing breadth-first search algorithms that process nodes in discovery order
- Building pipeline systems where tasks are processed in submission order

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

The `delete` method provides a value-based removal mechanism that finds and removes all instances of a specific value from an array. Unlike index-based removal methods, `delete` searches for elements using the `==` operator and removes every occurrence it finds. The method returns the deleted value if found, or nil if not found (unless a block is provided for the not-found case). This method is particularly useful for data cleanup operations where you need to purge all instances of unwanted values, and it's more efficient than manually searching and removing elements in a loop.

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

- Data sanitization where specific unwanted values need to be removed
- Cleaning user input by removing invalid or placeholder values
- Implementing filtering logic that removes all instances of problematic data
- Building configuration systems where certain values should be completely eliminated

#### `delete_at`

The `delete_at` method provides precise, index-based element removal from an array. Unlike value-based deletion methods, this method targets a specific position and removes exactly one element at that location. It returns the deleted element or nil if the index is out of bounds, making it safe to use without prior bounds checking. After removal, all elements at higher indices are shifted down to fill the gap, which makes this an O(n) operation for elements not at the end. This method is essential when you know the exact position of unwanted data or when implementing algorithms that need to remove elements at calculated positions.

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

- Removing elements at specific calculated positions in algorithms
- Implementing editing functionality where users delete items by position
- Building data structures that need precise element removal (sparse arrays, etc.)
- Correcting data at known problematic indices during validation processes

#### `clear`

The `clear` method provides the most efficient way to remove all elements from an array while preserving the array object itself. Unlike creating a new empty array, `clear` maintains all existing references to the array object, which is crucial in scenarios where multiple variables point to the same array or when the array is passed between methods. The operation is O(1) and immediately frees memory used by the elements. This method is particularly important in long-running applications where proper memory management prevents memory leaks, and in situations where you need to reset state while maintaining object identity.

```ruby
arr = [1, 2, 3, 4, 5]
arr.clear
puts arr.inspect
# Output: []
puts arr.length
# Output: 0
```

**Common use cases:**

- Resetting application state while maintaining object references
- Implementing efficient memory management in long-running processes
- Clearing temporary data structures between processing cycles
- Building reusable array objects that need periodic cleanup without reallocation

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

The `each` method is the fundamental iterator in Ruby, providing the foundation for most array traversal operations. Unlike other programming languages that rely on index-based loops, `each` embodies Ruby's philosophy of expressing intent rather than implementation details. It yields each element to the provided block and returns the original array unchanged, making it perfect for side-effect operations like printing, logging, or modifying external state. The method is also the basis for Ruby's Enumerable module, and most other iteration methods are built upon `each`. Its return value (the original array) makes it chainable with other array operations.

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

- Processing every element for side effects (printing, logging, database operations)
- Implementing visitor patterns where you need to act on each element
- Building complex iteration patterns by chaining with other enumerable methods
- Creating functional programming pipelines where each step processes all elements

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

The `select` method implements the functional programming concept of filtering, allowing you to extract elements from an array that meet specific criteria defined by a block. This method evaluates the block for each element and includes only those elements for which the block returns a truthy value in the resulting array. The original array remains unchanged, making this a pure function that doesn't cause side effects. `select` is fundamental to data analysis and processing workflows where you need to isolate subsets of data based on business logic, validation rules, or conditional criteria. The `filter` alias was added in newer Ruby versions to align with other programming languages' naming conventions.

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

- Implementing search and filtering functionality in applications
- Data validation and cleanup operations where you need to remove invalid entries
- Creating subsets for specialized processing (active users, valid records, etc.)
- Building query-like operations for in-memory data structures

#### `reject`

The `reject` method serves as the logical inverse of `select`, implementing a filtering operation that excludes elements matching a given condition rather than including them. This method evaluates the provided block for each element and creates a new array containing only those elements for which the block returns a falsy value. `reject` is particularly valuable when it's more natural to express what you want to exclude rather than what you want to include, often leading to more readable and intuitive code. Like `select`, it preserves the original array and returns a new filtered array, making it a pure function without side effects.

```ruby
arr = [1, 2, 3, 4, 5, 6]

odds = arr.reject { |n| n.even? }
puts odds.inspect
# Output: [1, 3, 5]
```

**Common use cases:**

- Implementing blacklist-style filtering where you specify what to exclude
- Data validation workflows where you remove invalid or problematic entries
- Creating complement sets where you need everything except certain criteria
- Building exception-based logic where it's clearer to define what should be filtered out

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

The `compact` method addresses one of the most common data cleaning needs by creating a new array with all nil values removed. This method is essential when working with data that may contain missing or undefined values, as nil elements can cause issues in processing pipelines or when converting arrays to other formats. Unlike many array methods that accept blocks, `compact` has a single, focused purpose: nil removal. The method preserves the original array unchanged and returns a new array, making it safe to use in functional programming contexts where immutability is important. It's particularly valuable when dealing with external data sources where nil values are common.

```ruby
arr = [1, nil, 2, nil, 3]
clean = arr.compact
puts clean.inspect
# Output: [1, 2, 3]
puts arr.inspect
# Output: [1, nil, 2, nil, 3]
```

**Common use cases:**

- Cleaning data imported from external sources where missing values are represented as nil
- Preparing arrays for operations that don't handle nil values gracefully
- Sanitizing user input where empty fields might be represented as nil
- Processing database query results where NULL values are converted to nil

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

The `map` method is one of Ruby's most powerful and frequently used functional programming tools, designed to transform every element of an array according to a given rule or function. Unlike `each`, which is used for side effects, `map` creates and returns a new array containing the results of applying the block to each element. This makes it perfect for data transformation pipelines where you need to convert one data structure into another while preserving the original. The method embodies the functional programming principle of immutability and is essential for creating clean, readable code that expresses transformations declaratively rather than imperatively.

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

- Converting data types (strings to integers, objects to IDs, etc.)
- Applying mathematical transformations to numeric data
- Extracting specific attributes from complex objects
- Building transformation pipelines for data processing and ETL operations

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

The `flatten` method recursively converts nested arrays into a single-level array, removing all levels of nesting to create a flat structure. When called without arguments, it completely flattens all nesting levels, while an optional depth parameter limits how many levels to flatten. This method is essential for processing complex data structures where nested arrays might arise from algorithmic operations, data parsing, or recursive processes. The method creates a new array without modifying the original, making it safe for functional programming approaches. It's particularly valuable when dealing with tree-like data structures that need to be linearized for processing or output.

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

- Converting hierarchical data structures into linear formats for processing or storage
- Simplifying nested results from recursive algorithms like tree traversals or divide-and-conquer solutions
- Preparing data for systems that require flat arrays (CSV output, simple databases, etc.)
- Cleaning up data structures where excessive nesting has accumulated through processing steps

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

The `zip` method combines multiple arrays element-wise, creating a new array of sub-arrays where each sub-array contains the corresponding elements from all input arrays. This operation is similar to a mathematical zip function or tuple creation, making it invaluable for working with related datasets that need to be processed together. The method stops when the shortest array is exhausted, padding shorter arrays with nil values. When called with a block, it yields each combined tuple to the block instead of creating an array, enabling immediate processing of paired data. This method is fundamental for implementing parallel iteration over multiple related collections.

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

- Combining related datasets like coordinates (x,y), key-value pairs, or multi-dimensional data points
- Creating lookup tables or mapping structures from separate arrays of keys and values
- Implementing parallel processing where corresponding elements from multiple arrays need joint processing
- Building data export formats where related fields from different sources must be combined row-wise

### Searching and Finding

#### `include?`

The `include?` method provides a straightforward way to test for membership in an array, returning a boolean value indicating whether a specific element exists within the collection. This method uses the `==` operator for comparison, making it suitable for checking equality with objects that have defined their own equality methods. The operation is linear in time complexity, scanning through the array until it finds a match or reaches the end. For large arrays where frequent membership testing is required, consider using a Set or Hash for O(1) lookup performance instead.

```ruby
arr = [1, 2, 3, 4, 5]

puts arr.include?(3)
# Output: true

puts arr.include?(10)
# Output: false
```

**Common use cases:**

- Implementing validation logic to check if values are in allowed lists
- Building access control systems where you need to verify permissions
- Creating conditional logic based on the presence of specific data
- Implementing "contains" functionality in search and filter operations

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

The `count` method provides flexible enumeration capabilities, offering three distinct modes of operation for counting elements. When called without arguments, it returns the total number of elements (equivalent to `length` or `size`). With a value argument, it counts how many elements equal that value using the `==` operator. With a block, it counts elements for which the block returns a truthy value, effectively combining counting with filtering logic. This versatility makes `count` invaluable for statistical analysis, data validation, and implementing business logic that depends on the frequency of specific conditions or values within datasets.

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

- Generating statistical reports on data frequency and distribution
- Implementing validation rules that depend on occurrence counts
- Building analytics features that track how many items meet specific criteria
- Creating conditional logic based on the prevalence of certain values or conditions

#### `any?`

The `any?` method implements existential quantification, testing whether at least one element in an array satisfies a given condition. When called with a block, it evaluates the block for each element and returns true as soon as any element makes the block return a truthy value, employing short-circuit evaluation for efficiency. When called without a block, it checks if any element is truthy (not nil or false). This method is fundamental to validation logic, conditional processing, and implementing "contains at least one" business rules. Its early termination behavior makes it efficient even on large arrays when a matching element is found early.

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

- Implementing validation systems that require at least one condition to be met
- Building permission systems where any of several roles grants access
- Creating early-exit logic in processing pipelines to avoid unnecessary computation
- Implementing search functionality that checks for the existence of matching criteria

#### `all?`

The `all?` method implements universal quantification, verifying that every element in an array satisfies a given condition. When used with a block, it evaluates the condition for each element and returns true only if all evaluations return truthy values, using short-circuit evaluation to return false immediately upon finding the first failing element. Without a block, it checks that all elements are truthy (not nil or false). This method is essential for validation systems, quality assurance checks, and implementing "all elements must" business rules. Its fail-fast behavior makes it efficient for large arrays when validation failures occur early in the sequence.

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

- Implementing comprehensive validation where every item must pass quality checks
- Building security systems where all conditions must be met for access
- Creating data integrity checks that ensure consistent properties across datasets
- Implementing contract validation where all terms and conditions must be satisfied

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

The `sort` method implements a stable, comparison-based sorting algorithm that arranges array elements in ascending order by default. Without a block, it uses the `<=>` operator (spaceship operator) to compare elements, which works for numbers, strings, and other objects that implement comparison methods. With a block, you can define custom comparison logic that receives two elements and should return -1, 0, or 1 based on their relative order. Ruby's sort is guaranteed to be stable, meaning elements that compare as equal maintain their relative positions. The method creates a new sorted array while preserving the original, making it safe for functional programming approaches.

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

- Organizing data for presentation in user interfaces
- Preparing data for binary search or other algorithms that require sorted input
- Implementing ranking systems and leaderboards
- Creating alphabetical or numerical listings for reports and displays

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

The `sort_by` method provides an elegant way to sort arrays based on computed values rather than direct element comparison. This method evaluates the provided block once for each element to generate a sort key, then sorts based on these keys rather than the original elements. This approach is more efficient than using `sort` with a comparison block when the sort criteria involve expensive computations, as each computation is performed only once per element. The method is particularly powerful for sorting complex objects by specific attributes or for implementing natural sorting where the comparison basis differs from the object's default comparison behavior.

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

- Sorting objects by specific attributes (user by age, product by price, etc.)
- Implementing natural sorting algorithms (version numbers, file names, etc.)
- Creating complex multi-criteria sorting where computation is involved
- Optimizing sorts where the comparison key requires expensive calculation

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

The `shuffle` method implements the Fisher-Yates shuffle algorithm to create a randomly reordered copy of an array. This method is cryptographically secure when used with Ruby's default random number generator and provides uniform distribution, meaning every possible permutation has an equal probability of being generated. The method accepts an optional random number generator parameter, allowing for reproducible results when testing or when specific randomization behavior is required. Unlike simple random selection methods, `shuffle` ensures that each element appears exactly once in the result, making it perfect for randomization scenarios where all elements must be preserved but in random order.

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

- Implementing card shuffling or game randomization features
- Creating randomized test data while preserving all original elements
- Building playlist shuffling features that ensure all songs play once
- Randomizing the order of survey questions or quiz items to prevent bias

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

The array concatenation operator creates a new array by combining elements from two arrays in sequence, preserving all elements including duplicates. Unlike set operations, this operator maintains the original order and frequency of elements, making it ideal for building larger datasets or combining related collections. The operation is non-destructive, creating a new array while leaving both operands unchanged. This operator is fundamental to functional programming approaches where immutability is valued, and it's more efficient than iteratively adding elements when combining known arrays. The resulting array contains all elements from the left operand followed by all elements from the right operand.

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

- Merging datasets while preserving all data points and their frequencies
- Building composite arrays from multiple data sources without losing information
- Creating expanded datasets for analysis where duplicates provide meaningful information
- Implementing append-only data structures where historical data must be preserved

#### `-` (Difference)

The array difference operator implements set subtraction, creating a new array containing elements from the left operand that are not present in the right operand. This operation removes all instances of matching elements, not just the first occurrence, making it powerful for data cleaning and filtering operations. The comparison uses the `==` operator, so it works with any objects that implement equality methods. Unlike simple filtering, this operator allows you to specify unwanted elements as a separate array, making it perfect for blacklist-style operations. The result maintains the original order of remaining elements from the left array.

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

- Implementing blacklist filtering where unwanted items are specified in a separate collection
- Data cleanup operations where you need to remove multiple specific values efficiently
- Creating complement sets by removing known exclusions from larger datasets
- Building permission systems where you start with all permissions and remove restricted ones

#### `&` (Intersection)

The intersection operator implements set intersection, returning a new array containing only elements that appear in both operands. This operation automatically removes duplicates and maintains the order of elements as they appear in the left operand. The comparison uses the `==` operator, making it suitable for any objects that implement equality. This operator is particularly valuable for finding commonalities between datasets, implementing permission systems where multiple criteria must be met, or identifying overlapping data points in analysis scenarios. The result is essentially a "both arrays contain this" filter that's more efficient and readable than manual iteration.

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

- Finding common interests, skills, or attributes between users or entities
- Implementing security systems where multiple authorization lists must agree
- Data analysis to identify overlapping categories or shared characteristics
- Building recommendation systems based on common preferences or behaviors

#### `|` (Union)

The union operator creates a new array containing all unique elements from both operands, effectively implementing set union with automatic deduplication. Unlike the `+` operator which preserves duplicates, `|` ensures each unique element appears only once in the result, using the `==` operator for equality testing. The operation maintains the order of first occurrence, with elements from the left operand appearing first, followed by new elements from the right operand. This operator is ideal for combining datasets where duplicates would be problematic, such as merging user lists, combining tag sets, or building comprehensive option lists from multiple sources.

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

- Merging user lists, permission sets, or configuration options without duplication
- Combining tag systems where duplicate tags would be meaningless or harmful
- Building comprehensive datasets from multiple sources while maintaining uniqueness
- Creating master lists from partial datasets where overlap is expected and undesired

#### `uniq`

The `uniq` method creates a new array with duplicate elements removed, preserving only the first occurrence of each unique element. When called without a block, it uses the `==` operator to determine equality, making it suitable for any objects that implement proper equality methods. With a block, it becomes much more powerful, allowing you to define custom uniqueness criteria by transforming each element and comparing the transformed values. This makes it possible to create uniqueness based on specific attributes of complex objects or computed values. The method maintains the original order of first occurrences, making the result predictable and stable.

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

- Cleaning datasets where duplicate entries need to be eliminated while preserving order
- Creating unique lists from user input where duplicates might have been accidentally added
- Implementing case-insensitive uniqueness for text processing and user interface elements
- Building distinct value lists for dropdowns, filters, or analytical grouping operations

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

The `length` and `size` methods are identical aliases that return the number of elements in an array as an integer. These methods provide O(1) constant-time access to the array's element count because Ruby maintains this information internally as arrays are modified. Both methods are safe to call on empty arrays (returning 0) and are fundamental to bounds checking, iteration control, and conditional logic. The dual naming reflects Ruby's philosophy of providing intuitive method names - `length` is more mathematical while `size` is more colloquial, but both provide exactly the same functionality and performance characteristics.

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

- Implementing bounds checking before array access to prevent index errors
- Creating conditional logic that behaves differently for empty versus populated arrays
- Building pagination systems where you need to know total item counts
- Validating input data where array size constraints are part of business rules

#### `empty?`

The `empty?` method provides a semantic and efficient way to test whether an array contains any elements, returning true for arrays with zero elements and false otherwise. This method is more expressive than checking `length == 0` or `size == 0`, clearly communicating the intent to test for emptiness rather than getting a count. It's particularly valuable in conditional logic where you need to handle empty collections differently, such as displaying placeholder text, skipping processing steps, or implementing validation rules. The method has O(1) performance and is the idiomatic Ruby way to check for empty collections.

```ruby
puts [].empty?
# Output: true

puts [1, 2, 3].empty?
# Output: false
```

**Common use cases:**

- Implementing user interface logic that shows different content for empty versus populated lists
- Creating validation systems where empty arrays represent missing or incomplete data
- Building conditional processing pipelines that skip expensive operations on empty datasets
- Implementing default behavior where empty collections trigger fallback or initialization logic

#### `join`

The `join` method converts an array into a string by concatenating all elements with an optional separator. This is one of the most efficient ways to build strings from array elements, as it avoids the performance penalty of repeated string concatenation. When no separator is provided, elements are joined directly without any delimiter. The method calls `to_s` on each element, making it safe to use with mixed data types. For large arrays, `join` is significantly faster than manually concatenating strings in a loop, as it pre-allocates the necessary memory and performs the operation in a single pass.

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

- Creating CSV or delimited text output for data export
- Building formatted strings for display in user interfaces
- Generating file paths by joining directory components
- Creating SQL IN clauses or other database query components

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

The `sum` method provides an efficient way to calculate the total of array elements, with built-in support for different data types and custom accumulation logic. When called without arguments on numeric arrays, it returns the arithmetic sum starting from 0. With an initial value argument, it starts the accumulation from that value, which is useful for setting different starting points or working with non-numeric types. The block form transforms each element before adding it to the sum, enabling complex aggregation operations. The method is optimized for numeric operations but can work with any objects that respond to the `+` operator, including strings, arrays, and custom objects.

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

- Calculating totals for financial data, quantities, or measurements in business applications
- Implementing statistical analysis where you need sums for averages, variance calculations
- Building aggregation features like shopping cart totals, scoring systems, or progress tracking
- Creating data transformation pipelines where elements are processed and accumulated into final results

#### `min` / `max`

The `min` and `max` methods find the smallest and largest elements in an array respectively, using either natural ordering or custom comparison logic. Without a block, they use the `<=>` operator (spaceship operator) to compare elements, which works for numbers, strings, dates, and other comparable objects. With a block, you can define custom comparison criteria, enabling you to find elements that are minimal or maximal according to specific attributes or computed values. These methods return nil for empty arrays and handle mixed data types gracefully when the comparison makes sense. They're essential for statistical analysis, data validation, and implementing business rules based on extreme values.

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

- Finding optimal values in datasets (highest score, lowest price, earliest date)
- Implementing data validation where values must fall within calculated ranges
- Building recommendation systems that identify extreme cases for special handling
- Creating statistical analysis features that need range boundaries for normalization or outlier detection

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

The `take` method creates a new array containing the first n elements from the original array, providing a safe and efficient way to extract prefixes without modifying the source. When the requested count exceeds the array length, it returns all available elements without raising an error. With a count of 0, it returns an empty array, and negative counts are treated as 0. This method is particularly useful for implementing pagination, creating preview samples, or limiting result sets in data processing pipelines. It's more expressive than using slice notation and clearly communicates the intent to extract a specific number of elements from the beginning.

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

- Implementing pagination systems where you need the first n results from a dataset
- Creating preview functionality that shows a limited number of items
- Building rate-limiting systems where only a certain number of operations are allowed
- Implementing sampling strategies where you need representative subsets from larger collections

#### `drop`

The `drop` method creates a new array by removing the first n elements from the original array, effectively providing the complement to `take`. This method is useful for skipping headers, removing processed elements conceptually, or implementing offset-based pagination. When the drop count exceeds the array length, it returns an empty array rather than raising an error. With a count of 0, it returns a copy of the entire array. The method maintains the order of remaining elements and is more semantic than using slice notation when you specifically want to skip a known number of initial elements.

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

- Implementing offset-based pagination where you skip already processed records
- Removing header rows or metadata elements from data files
- Creating sliding window algorithms where you discard older data points
- Building queue-like processing where you conceptually remove processed items

#### `take_while`

The `take_while` method extracts elements from the beginning of an array as long as they satisfy a given condition, stopping immediately when the first element fails the test. This method implements a conditional prefix extraction that's particularly useful for processing ordered data where you want to capture an initial segment that meets certain criteria. Unlike `select`, which examines all elements, `take_while` stops at the first failure, making it efficient for scenarios where you're looking for a continuous sequence of qualifying elements. It's perfect for parsing tasks, implementing break conditions, or extracting valid data from the beginning of potentially mixed datasets.

```ruby
arr = [1, 2, 3, 4, 5, 4, 3, 2, 1]

puts arr.take_while { |x| x < 4 }.inspect
# Output: [1, 2, 3]

puts arr.take_while { |x| x < 10 }.inspect
# Output: [1, 2, 3, 4, 5, 4, 3, 2, 1]
```

**Common use cases:**

- Parsing text or data streams where you need to extract valid content until hitting a delimiter
- Processing time-series data where you want elements until a threshold is exceeded
- Implementing validation that captures correct input until the first error
- Building parsers that extract tokens until encountering a stop condition

#### `drop_while`

The `drop_while` method removes elements from the beginning of an array as long as they satisfy a given condition, returning the remaining elements once the first element fails the test. This method is the complement to `take_while` and is particularly useful for skipping over unwanted prefixes in ordered data. It's commonly used in parsing scenarios where you need to discard headers, whitespace, or other leading content until you reach the actual data. Like `take_while`, it stops at the first condition failure, making it efficient for processing where you want to skip an initial segment that meets certain criteria.

```ruby
arr = [1, 2, 3, 4, 5, 4, 3, 2, 1]

puts arr.drop_while { |x| x < 4 }.inspect
# Output: [4, 5, 4, 3, 2, 1]

puts arr.drop_while { |x| x < 0 }.inspect
# Output: [1, 2, 3, 4, 5, 4, 3, 2, 1]
```

**Common use cases:**

- Skipping headers, metadata, or preamble content in data processing pipelines
- Removing leading whitespace or invalid characters from parsed text
- Implementing parsers that ignore initial tokens until reaching meaningful content
- Processing ordered data where you need to discard an initial sequence of uninteresting elements

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
