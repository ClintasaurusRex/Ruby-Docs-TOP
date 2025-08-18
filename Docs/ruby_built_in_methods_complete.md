# Ruby Built-in Methods - Complete Reference

## Quick Reference & Navigation

| Method                                         | Applies To           | Description                        |
| ---------------------------------------------- | -------------------- | ---------------------------------- |
| **String Methods**                             |
| [`length/size`](#lengthsize)                   | String, Array, Hash  | Returns number of elements         |
| [`concat/+`](#concat)                          | String, Array        | Combines two objects               |
| [`upcase/downcase`](#upcasedowncase)           | String               | Changes case of all letters        |
| [`capitalize`](#capitalize)                    | String               | Capitalizes first letter           |
| [`strip/chomp`](#stripchomp)                   | String               | Removes whitespace                 |
| [`split`](#split)                              | String               | Converts string to array           |
| [`join`](#join-1)                              | Array                | Converts array to string           |
| [`include?`](#include)                         | String, Array, Range | Checks if contains element         |
| [`gsub/sub`](#gsubsub)                         | String               | Substitutes text                   |
| [`slice/[]`](#slice)                           | String               | Extracts portions of string        |
| [`start_with?/end_with?`](#start_withend_with) | String               | Checks string start/end            |
| **Array Methods**                              |
| [`length/size/count`](#lengthsizecount)        | Array                | Returns number of elements         |
| [`push/<<`](#push)                             | Array                | Adds element to end                |
| [`pop/shift`](#popshift)                       | Array                | Removes element from end/beginning |
| [`unshift`](#unshift)                          | Array                | Adds element to beginning          |
| [`concat/+`](#concat-1)                        | Array                | Combines arrays                    |
| [`join`](#join)                                | Array                | Converts array to string           |
| [`include?`](#include-1)                       | Array                | Checks if contains element         |
| [`index/rindex`](#indexrindex)                 | Array                | Finds position of element          |
| [`sort/sort!`](#sortsort)                      | Array                | Sorts elements                     |
| [`reverse/reverse!`](#reversereverse)          | Array                | Reverses order                     |
| [`uniq/uniq!`](#uniquniq)                      | Array                | Removes duplicates                 |
| [`flatten`](#flatten)                          | Array                | Flattens nested arrays             |
| [`compact`](#compact)                          | Array                | Removes nil values                 |
| [`select/filter`](#selectfilter)               | Array, Hash          | Filters elements by condition      |
| [`reject`](#reject)                            | Array, Hash          | Excludes elements by condition     |
| [`map/collect`](#mapcollect)                   | Array, Hash          | Transforms each element            |
| [`each`](#each)                                | Array, Hash, Range   | Iterates over elements             |
| [`each_with_index`](#each_with_index)          | Array                | Iterates with index                |
| [`find/detect`](#finddetect)                   | Array                | Finds first matching element       |
| [`any?/all?`](#anyall)                         | Array                | Tests if any/all elements match    |
| [`empty?`](#empty)                             | String, Array, Hash  | Checks if contains no elements     |
| [`first/last`](#firstlast)                     | Array, Range         | Gets first/last element            |
| [`sample`](#sample)                            | Array                | Gets random element                |
| [`min/max`](#minmax)                           | Array                | Gets smallest/largest element      |
| [`sum`](#sum)                                  | Array                | Adds all numeric elements          |
| **Numeric Methods**                            |
| [`abs`](#abs)                                  | Numeric              | Absolute value                     |
| [`round`](#round)                              | Numeric              | Rounds to nearest integer          |
| [`ceil/floor`](#ceilfloor)                     | Numeric              | Rounds up/down                     |
| [`even?/odd?`](#evenodd)                       | Integer              | Checks if even or odd              |
| [`zero?`](#zero)                               | Numeric              | Checks if equals zero              |
| [`between?`](#between)                         | Numeric              | Checks if between two values       |
| [`times`](#times)                              | Integer              | Repeats block n times              |
| [`upto/downto`](#uptodownto)                   | Integer              | Iterates up/down to number         |
| [`step`](#step)                                | Numeric              | Iterates with step size            |
| **Range Methods**                              |
| [`to_a`](#to_a)                                | Range, Hash          | Converts to array                  |
| [`include?/cover?`](#includecover)             | Range                | Checks if contains value           |
| [`each`](#each-1)                              | Range                | Iterates over range                |
| [`size`](#size)                                | Range                | Returns number of elements         |
| [`first/last`](#firstlast-1)                   | Range                | Gets first/last element            |
| **Object Methods**                             |
| [`class`](#class)                              | All objects          | Returns object's class             |
| [`is_a?/kind_of?`](#is_akind_of)               | All objects          | Checks if object is of type        |
| [`instance_of?`](#instance_of)                 | All objects          | Checks exact class type            |
| [`respond_to?`](#respond_to)                   | All objects          | Checks if responds to method       |
| [`nil?`](#nil)                                 | All objects          | Checks if object is nil            |
| [`to_s`](#to_s)                                | All objects          | Converts to string                 |
| [`to_i/to_f`](#to_ito_f)                       | All objects          | Type conversion                    |
| [`inspect`](#inspect)                          | All objects          | Detailed string representation     |
| [`freeze`](#freeze)                            | All objects          | Makes object immutable             |
| [`frozen?`](#frozen)                           | All objects          | Checks if object is frozen         |
| **Enumerable Methods**                         |
| [`each_with_object`](#each_with_object)        | Enumerable           | Iterates with accumulator          |
| [`reduce/inject`](#reduceinject)               | Enumerable           | Combines elements with operation   |
| [`group_by`](#group_by)                        | Enumerable           | Groups elements by criteria        |
| [`partition`](#partition)                      | Enumerable           | Splits into two groups             |
| [`zip`](#zip)                                  | Enumerable           | Combines multiple arrays           |
| [`cycle`](#cycle)                              | Enumerable           | Repeats collection                 |

---

## String Methods

### length/size

Returns the number of characters in a string.

**Syntax:** `string.length` or `string.size`

```ruby
text = "Hello World"
puts text.length
# Output: 11

puts text.size
# Output: 11

empty = ""
puts empty.length
# Output: 0

unicode = "café"
puts unicode.length
# Output: 4
```

### concat/+

Combines two strings together.

**Syntax:** `string.concat(other)` or `string + other`

```ruby
first = "Hello"
second = " World"

# Using concat (modifies original)
first.concat(second)
puts first
# Output: Hello World

# Using + (creates new string)
greeting = "Hi" + " there"
puts greeting
# Output: Hi there

# Chaining
result = "Ruby".concat(" is").concat(" awesome")
puts result
# Output: Ruby is awesome
```

### upcase/downcase

Changes the case of all letters in a string.

**Syntax:** `string.upcase` or `string.downcase`

```ruby
text = "Hello World"

puts text.upcase
# Output: HELLO WORLD

puts text.downcase
# Output: hello world

# Original unchanged
puts text
# Output: Hello World

# With special characters
mixed = "Hello123!@#"
puts mixed.upcase
# Output: HELLO123!@#
```

### capitalize

Capitalizes the first letter and makes the rest lowercase.

**Syntax:** `string.capitalize`

```ruby
text = "hello world"
puts text.capitalize
# Output: Hello world

upper = "HELLO WORLD"
puts upper.capitalize
# Output: Hello world

mixed = "hELLo WoRLd"
puts mixed.capitalize
# Output: Hello world

# With numbers and symbols
weird = "123hello WORLD"
puts weird.capitalize
# Output: 123hello world
```

### strip/chomp

Removes whitespace from strings.

**Syntax:** `string.strip` or `string.chomp`

```ruby
# strip removes whitespace from both ends
padded = "  Hello World  "
puts padded.strip
# Output: Hello World

# chomp removes newline characters from end
with_newline = "Hello World\n"
puts with_newline.chomp
# Output: Hello World

# Different whitespace characters
messy = "\t  Hello World  \n\r"
puts messy.strip
# Output: Hello World

# chomp with specific character
text = "Hello World!!!"
puts text.chomp("!")
# Output: Hello World!!
```

### split/join

Converts between strings and arrays.

**Syntax:** `string.split(delimiter)` and `array.join(delimiter)`

```ruby
# split - string to array
sentence = "Hello beautiful world"
words = sentence.split(" ")
puts words
# Output: ["Hello", "beautiful", "world"]

# split with different delimiter
csv_data = "apple,banana,orange"
fruits = csv_data.split(",")
puts fruits
# Output: ["apple", "banana", "orange"]

# join - array to string
colors = ["red", "green", "blue"]
result = colors.join(" and ")
puts result
# Output: red and green and blue

# join with different separator
numbers = [1, 2, 3, 4, 5]
puts numbers.join("-")
# Output: 1-2-3-4-5
```

### include?

Checks if a string contains a substring.

**Syntax:** `string.include?(substring)`

```ruby
text = "Hello World"

puts text.include?("World")
# Output: true

puts text.include?("world")
# Output: false (case sensitive)

puts text.include?("Hello")
# Output: true

puts text.include?("xyz")
# Output: false

# With single characters
puts text.include?("o")
# Output: true
```

### gsub/sub

Substitutes text within a string.

**Syntax:** `string.gsub(pattern, replacement)` or `string.sub(pattern, replacement)`

```ruby
text = "Hello World World"

# gsub replaces ALL occurrences
puts text.gsub("World", "Universe")
# Output: Hello Universe Universe

# sub replaces FIRST occurrence only
puts text.sub("World", "Universe")
# Output: Hello Universe World

# With regular expressions
phone = "123-456-7890"
puts phone.gsub("-", ".")
# Output: 123.456.7890

# Using block for complex replacements
sentence = "I have 3 cats and 2 dogs"
puts sentence.gsub(/\d+/) { |num| (num.to_i * 2).to_s }
# Output: I have 6 cats and 4 dogs
```

### slice/[]

Extracts portions of a string.

**Syntax:** `string.slice(index)` or `string[index]`

```ruby
text = "Hello World"

# Single character by index
puts text[0]
# Output: H

puts text.slice(6)
# Output: W

# Range of characters
puts text[0, 5]
# Output: Hello

puts text.slice(6, 5)
# Output: World

# Using range
puts text[0..4]
# Output: Hello

# Negative indices
puts text[-1]
# Output: d

puts text[-5..-1]
# Output: World
```

### start_with?/end_with?

Checks if string starts or ends with specific text.

**Syntax:** `string.start_with?(prefix)` or `string.end_with?(suffix)`

```ruby
filename = "document.pdf"

puts filename.start_with?("doc")
# Output: true

puts filename.end_with?(".pdf")
# Output: true

puts filename.start_with?("image")
# Output: false

puts filename.end_with?(".jpg")
# Output: false

# Multiple options
puts filename.end_with?(".txt", ".pdf", ".doc")
# Output: true
```

---

## Array Methods

### length/size/count

Returns the number of elements in an array.

**Syntax:** `array.length`, `array.size`, or `array.count`

```ruby
numbers = [1, 2, 3, 4, 5]
puts numbers.length
# Output: 5

puts numbers.size
# Output: 5

# count can take a block for conditional counting
puts numbers.count { |n| n > 3 }
# Output: 2

# count specific elements
letters = ["a", "b", "a", "c", "a"]
puts letters.count("a")
# Output: 3
```

### push/<<

Adds elements to the end of an array.

**Syntax:** `array.push(element)` or `array << element`

```ruby
fruits = ["apple", "banana"]

# Using push
fruits.push("orange")
puts fruits
# Output: ["apple", "banana", "orange"]

# Using <<
fruits << "grape"
puts fruits
# Output: ["apple", "banana", "orange", "grape"]

# Push multiple elements
fruits.push("kiwi", "mango")
puts fruits
# Output: ["apple", "banana", "orange", "grape", "kiwi", "mango"]
```

### pop/shift

Removes elements from the end or beginning of an array.

**Syntax:** `array.pop` or `array.shift`

```ruby
numbers = [1, 2, 3, 4, 5]

# pop removes from end
last = numbers.pop
puts last
# Output: 5
puts numbers
# Output: [1, 2, 3, 4]

# shift removes from beginning
first = numbers.shift
puts first
# Output: 1
puts numbers
# Output: [2, 3, 4]

# pop/shift multiple elements
data = [1, 2, 3, 4, 5, 6]
puts data.pop(2)
# Output: [5, 6]
puts data.shift(2)
# Output: [1, 2]
puts data
# Output: [3, 4]
```

### unshift

Adds elements to the beginning of an array.

**Syntax:** `array.unshift(element)`

```ruby
numbers = [3, 4, 5]

numbers.unshift(2)
puts numbers
# Output: [2, 3, 4, 5]

numbers.unshift(0, 1)
puts numbers
# Output: [0, 1, 2, 3, 4, 5]

# Returns the array
result = numbers.unshift(-1)
puts result
# Output: [-1, 0, 1, 2, 3, 4, 5]
```

### concat/+

Combines two arrays.

**Syntax:** `array.concat(other_array)` or `array + other_array`

```ruby
first = [1, 2, 3]
second = [4, 5, 6]

# concat modifies original array
first.concat(second)
puts first
# Output: [1, 2, 3, 4, 5, 6]

# + creates new array
arr1 = [1, 2]
arr2 = [3, 4]
combined = arr1 + arr2
puts combined
# Output: [1, 2, 3, 4]
puts arr1  # Original unchanged
# Output: [1, 2]
```

### join

Converts array to string with delimiter.

**Syntax:** `array.join(delimiter)`

```ruby
words = ["Hello", "beautiful", "world"]
puts words.join(" ")
# Output: Hello beautiful world

numbers = [1, 2, 3, 4, 5]
puts numbers.join("-")
# Output: 1-2-3-4-5

# Default delimiter is empty string
letters = ["a", "b", "c"]
puts letters.join
# Output: abc

# With mixed types
mixed = ["Price:", 29.99, "USD"]
puts mixed.join(" ")
# Output: Price: 29.99 USD
```

### include?

Checks if array contains a specific element.

**Syntax:** `array.include?(element)`

```ruby
fruits = ["apple", "banana", "orange"]

puts fruits.include?("banana")
# Output: true

puts fruits.include?("grape")
# Output: false

numbers = [1, 2, 3, 4, 5]
puts numbers.include?(3)
# Output: true

puts numbers.include?(10)
# Output: false
```

### index/rindex

Finds the position of an element in the array.

**Syntax:** `array.index(element)` or `array.rindex(element)`

```ruby
letters = ["a", "b", "c", "b", "d"]

# index finds first occurrence
puts letters.index("b")
# Output: 1

# rindex finds last occurrence
puts letters.rindex("b")
# Output: 3

# Returns nil if not found
puts letters.index("z").nil?
# Output: true

# With block
numbers = [1, 3, 5, 7, 9]
puts numbers.index { |n| n > 5 }
# Output: 3 (index of 7)
```

### sort/sort!

Sorts the elements of an array.

**Syntax:** `array.sort` or `array.sort!`

```ruby
numbers = [3, 1, 4, 1, 5, 9]

# sort returns new array
sorted = numbers.sort
puts sorted
# Output: [1, 1, 3, 4, 5, 9]
puts numbers  # Original unchanged
# Output: [3, 1, 4, 1, 5, 9]

# sort! modifies original
numbers.sort!
puts numbers
# Output: [1, 1, 3, 4, 5, 9]

# Sort strings
words = ["zebra", "apple", "banana"]
puts words.sort
# Output: ["apple", "banana", "zebra"]

# Custom sort with block
names = ["John", "Alice", "Bob"]
puts names.sort { |a, b| a.length <=> b.length }
# Output: ["Bob", "John", "Alice"]
```

### reverse/reverse!

Reverses the order of elements.

**Syntax:** `array.reverse` or `array.reverse!`

```ruby
numbers = [1, 2, 3, 4, 5]

# reverse returns new array
reversed = numbers.reverse
puts reversed
# Output: [5, 4, 3, 2, 1]
puts numbers  # Original unchanged
# Output: [1, 2, 3, 4, 5]

# reverse! modifies original
numbers.reverse!
puts numbers
# Output: [5, 4, 3, 2, 1]

# Works with any elements
words = ["first", "second", "third"]
puts words.reverse
# Output: ["third", "second", "first"]
```

### uniq/uniq!

Removes duplicate elements.

**Syntax:** `array.uniq` or `array.uniq!`

```ruby
numbers = [1, 2, 2, 3, 3, 3, 4]

# uniq returns new array
unique = numbers.uniq
puts unique
# Output: [1, 2, 3, 4]
puts numbers  # Original unchanged
# Output: [1, 2, 2, 3, 3, 3, 4]

# uniq! modifies original
numbers.uniq!
puts numbers
# Output: [1, 2, 3, 4]

# With block for custom uniqueness
words = ["cat", "dog", "pig", "cow"]
puts words.uniq { |word| word.length }
# Output: ["cat", "pig"] (unique by length)
```

### flatten

Flattens nested arrays into a single level.

**Syntax:** `array.flatten(level = nil)`

```ruby
nested = [1, [2, 3], [4, [5, 6]]]

# Flatten completely
puts nested.flatten
# Output: [1, 2, 3, 4, 5, 6]

# Flatten one level only
puts nested.flatten(1)
# Output: [1, 2, 3, 4, [5, 6]]

# Deep nesting
deep = [1, [2, [3, [4, 5]]]]
puts deep.flatten
# Output: [1, 2, 3, 4, 5]

puts deep.flatten(2)
# Output: [1, 2, 3, [4, 5]]
```

### compact

Removes nil values from array.

**Syntax:** `array.compact`

```ruby
mixed = [1, nil, 2, nil, 3, 4]

clean = mixed.compact
puts clean
# Output: [1, 2, 3, 4]

# Original unchanged
puts mixed
# Output: [1, nil, 2, nil, 3, 4]

# compact! modifies original
mixed.compact!
puts mixed
# Output: [1, 2, 3, 4]

# No effect if no nils
no_nils = [1, 2, 3]
puts no_nils.compact
# Output: [1, 2, 3]
```

### select/filter

Selects elements that match a condition.

**Syntax:** `array.select { |element| condition }` or `array.filter { |element| condition }`

```ruby
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# Select even numbers
evens = numbers.select { |n| n.even? }
puts evens
# Output: [2, 4, 6, 8, 10]

# filter is an alias for select
odds = numbers.filter { |n| n.odd? }
puts odds
# Output: [1, 3, 5, 7, 9]

# With strings
words = ["cat", "dog", "elephant", "ant"]
long_words = words.select { |word| word.length > 3 }
puts long_words
# Output: ["elephant"]
```

### reject

Excludes elements that match a condition.

**Syntax:** `array.reject { |element| condition }`

```ruby
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# Reject even numbers (keep odds)
odds = numbers.reject { |n| n.even? }
puts odds
# Output: [1, 3, 5, 7, 9]

# Reject small numbers
big_numbers = numbers.reject { |n| n < 5 }
puts big_numbers
# Output: [5, 6, 7, 8, 9, 10]

# With strings
words = ["cat", "dog", "elephant", "ant"]
short_words = words.reject { |word| word.length > 3 }
puts short_words
# Output: ["cat", "dog", "ant"]
```

### map/collect

Transforms each element using a block.

**Syntax:** `array.map { |element| transformation }` or `array.collect { |element| transformation }`

```ruby
numbers = [1, 2, 3, 4, 5]

# Square each number
squares = numbers.map { |n| n * n }
puts squares
# Output: [1, 4, 9, 16, 25]

# collect is an alias for map
doubled = numbers.collect { |n| n * 2 }
puts doubled
# Output: [2, 4, 6, 8, 10]

# Transform strings
words = ["hello", "world"]
upcase_words = words.map { |word| word.upcase }
puts upcase_words
# Output: ["HELLO", "WORLD"]

# Original array unchanged
puts numbers
# Output: [1, 2, 3, 4, 5]
```

### each

Iterates over each element.

**Syntax:** `array.each { |element| block }`

```ruby
fruits = ["apple", "banana", "orange"]

# Print each fruit
fruits.each { |fruit| puts "I like #{fruit}" }
# Output:
# I like apple
# I like banana
# I like orange

# With index
fruits.each.with_index { |fruit, index| puts "#{index}: #{fruit}" }
# Output:
# 0: apple
# 1: banana
# 2: orange

# Returns original array
result = [1, 2, 3].each { |n| n * 2 }
puts result
# Output: [1, 2, 3]
```

### each_with_index

Iterates with both element and index.

**Syntax:** `array.each_with_index { |element, index| block }`

```ruby
colors = ["red", "green", "blue"]

colors.each_with_index do |color, index|
  puts "Color #{index + 1}: #{color}"
end
# Output:
# Color 1: red
# Color 2: green
# Color 3: blue

# Creating hash from array
hash = {}
["a", "b", "c"].each_with_index { |letter, i| hash[i] = letter }
puts hash
# Output: {0=>"a", 1=>"b", 2=>"c"}
```

### find/detect

Finds the first element that matches a condition.

**Syntax:** `array.find { |element| condition }` or `array.detect { |element| condition }`

```ruby
numbers = [1, 3, 5, 8, 10, 12]

# Find first even number
first_even = numbers.find { |n| n.even? }
puts first_even
# Output: 8

# detect is an alias
first_big = numbers.detect { |n| n > 10 }
puts first_big
# Output: 12

# Returns nil if not found
result = numbers.find { |n| n > 100 }
puts result.nil?
# Output: true

# With strings
words = ["cat", "dog", "elephant"]
long_word = words.find { |word| word.length > 5 }
puts long_word
# Output: elephant
```

### any?/all?

Tests if any or all elements match a condition.

**Syntax:** `array.any? { |element| condition }` or `array.all? { |element| condition }`

```ruby
numbers = [2, 4, 6, 8]

# Check if any are even
puts numbers.any? { |n| n.even? }
# Output: true

# Check if all are even
puts numbers.all? { |n| n.even? }
# Output: true

mixed = [1, 2, 3, 4]
puts mixed.all? { |n| n.even? }
# Output: false

puts mixed.any? { |n| n.odd? }
# Output: true

# Without block (checks for truthy values)
puts [true, false, true].any?
# Output: true

puts [nil, false].all?
# Output: false
```

### empty?

Checks if array has no elements.

**Syntax:** `array.empty?`

```ruby
empty_array = []
puts empty_array.empty?
# Output: true

filled_array = [1, 2, 3]
puts filled_array.empty?
# Output: false

# After clearing
filled_array.clear
puts filled_array.empty?
# Output: true

# Nil elements still count
nil_array = [nil, nil]
puts nil_array.empty?
# Output: false
```

### first/last

Gets the first or last element(s).

**Syntax:** `array.first(n = 1)` or `array.last(n = 1)`

```ruby
numbers = [1, 2, 3, 4, 5]

puts numbers.first
# Output: 1

puts numbers.last
# Output: 5

# Get multiple elements
puts numbers.first(3)
# Output: [1, 2, 3]

puts numbers.last(2)
# Output: [4, 5]

# Empty array returns nil
puts [].first.nil?
# Output: true
```

### sample

Gets random element(s) from array.

**Syntax:** `array.sample(n = 1)`

```ruby
colors = ["red", "green", "blue", "yellow", "purple"]

# Random single element
puts colors.sample
# Output: (random color, e.g., "blue")

# Multiple random elements
puts colors.sample(3)
# Output: (3 random colors, e.g., ["green", "purple", "red"])

# Sample more than available
puts colors.sample(10)
# Output: (all colors in random order)

numbers = [1, 2, 3, 4, 5]
puts numbers.sample(2)
# Output: (2 random numbers, e.g., [3, 1])
```

### min/max

Gets the smallest or largest element.

**Syntax:** `array.min` or `array.max`

```ruby
numbers = [3, 1, 4, 1, 5, 9, 2, 6]

puts numbers.min
# Output: 1

puts numbers.max
# Output: 9

# With strings (alphabetical)
words = ["zebra", "apple", "banana"]
puts words.min
# Output: apple

puts words.max
# Output: zebra

# Get multiple min/max
puts numbers.min(3)
# Output: [1, 1, 2]

puts numbers.max(2)
# Output: [9, 6]
```

### sum

Adds all numeric elements.

**Syntax:** `array.sum(initial = 0)`

```ruby
numbers = [1, 2, 3, 4, 5]
puts numbers.sum
# Output: 15

# With initial value
puts numbers.sum(10)
# Output: 25

# With decimals
prices = [1.99, 2.50, 3.25]
puts prices.sum
# Output: 7.74

# With block for transformation
words = ["cat", "dog", "elephant"]
total_length = words.sum { |word| word.length }
puts total_length
# Output: 11
```

---

## Numeric Methods

### abs

Returns the absolute value of a number.

**Syntax:** `number.abs`

```ruby
puts (-5).abs
# Output: 5

puts 5.abs
# Output: 5

puts (-3.14).abs
# Output: 3.14

puts 0.abs
# Output: 0

# With variables
temperature = -10
puts temperature.abs
# Output: 10
```

### round

Rounds a number to the nearest integer or specified decimal places.

**Syntax:** `number.round(digits = 0)`

```ruby
puts 3.14159.round
# Output: 3

puts 3.14159.round(2)
# Output: 3.14

puts 3.14159.round(4)
# Output: 3.1416

# Rounding integers
puts 5.round
# Output: 5

# Negative precision
puts 1234.round(-1)
# Output: 1230

puts 1234.round(-2)
# Output: 1200
```

### ceil/floor

Rounds up or down to the nearest integer.

**Syntax:** `number.ceil` or `number.floor`

```ruby
puts 3.1.ceil
# Output: 4

puts 3.9.ceil
# Output: 4

puts 3.1.floor
# Output: 3

puts 3.9.floor
# Output: 3

# Negative numbers
puts (-3.1).ceil
# Output: -3

puts (-3.1).floor
# Output: -4

# Already integers
puts 5.ceil
# Output: 5
```

### even?/odd?

Checks if an integer is even or odd.

**Syntax:** `integer.even?` or `integer.odd?`

```ruby
puts 4.even?
# Output: true

puts 4.odd?
# Output: false

puts 7.even?
# Output: false

puts 7.odd?
# Output: true

puts 0.even?
# Output: true

# In conditionals
number = 15
if number.odd?
  puts "#{number} is odd"
else
  puts "#{number} is even"
end
# Output: 15 is odd
```

### zero?

Checks if a number equals zero.

**Syntax:** `number.zero?`

```ruby
puts 0.zero?
# Output: true

puts 5.zero?
# Output: false

puts (-1).zero?
# Output: false

puts 0.0.zero?
# Output: true

# Useful in conditionals
balance = 0
puts "Account is empty" if balance.zero?
# Output: Account is empty
```

### between?

Checks if a number is between two values (inclusive).

**Syntax:** `number.between?(min, max)`

```ruby
puts 5.between?(1, 10)
# Output: true

puts 5.between?(6, 10)
# Output: false

puts 5.between?(1, 5)
# Output: true (inclusive)

puts 5.between?(5, 5)
# Output: true

# With decimals
puts 3.5.between?(3, 4)
# Output: true

# Age validation example
age = 25
puts "Adult" if age.between?(18, 65)
# Output: Adult
```

### times

Executes a block a specified number of times.

**Syntax:** `integer.times { |i| block }`

```ruby
# Simple repetition
3.times { puts "Hello!" }
# Output:
# Hello!
# Hello!
# Hello!

# With index
5.times { |i| puts "Count: #{i}" }
# Output:
# Count: 0
# Count: 1
# Count: 2
# Count: 3
# Count: 4

# Building an array
squares = []
4.times { |i| squares << i * i }
puts squares
# Output: [0, 1, 4, 9]
```

### upto/downto

Iterates from one number up to or down to another.

**Syntax:** `number.upto(limit) { |i| block }` or `number.downto(limit) { |i| block }`

```ruby
# Count up
1.upto(5) { |i| puts "Up: #{i}" }
# Output:
# Up: 1
# Up: 2
# Up: 3
# Up: 4
# Up: 5

# Count down
5.downto(1) { |i| puts "Down: #{i}" }
# Output:
# Down: 5
# Down: 4
# Down: 3
# Down: 2
# Down: 1

# Building ranges
result = []
3.upto(7) { |i| result << i }
puts result
# Output: [3, 4, 5, 6, 7]
```

### step

Iterates with a specific step size.

**Syntax:** `number.step(limit, step) { |i| block }`

```ruby
# Step by 2
0.step(10, 2) { |i| puts i }
# Output: 0, 2, 4, 6, 8, 10

# Step by 3
1.step(10, 3) { |i| puts i }
# Output: 1, 4, 7, 10

# Negative step
10.step(0, -2) { |i| puts i }
# Output: 10, 8, 6, 4, 2, 0

# With decimals
0.step(1, 0.25) { |i| puts i }
# Output: 0.0, 0.25, 0.5, 0.75, 1.0
```

---

## Range Methods

### to_a

Converts a range to an array.

**Syntax:** `range.to_a`

```ruby
puts (1..5).to_a
# Output: [1, 2, 3, 4, 5]

puts (1...5).to_a  # Exclusive end
# Output: [1, 2, 3, 4]

puts ('a'..'e').to_a
# Output: ["a", "b", "c", "d", "e"]

# Large ranges (be careful!)
puts (1..3).to_a
# Output: [1, 2, 3]

# Backwards range
puts (5..1).to_a
# Output: [] (empty array)
```

### include?/cover?

Checks if a range contains a value.

**Syntax:** `range.include?(value)` or `range.cover?(value)`

```ruby
range = (1..10)

puts range.include?(5)
# Output: true

puts range.include?(15)
# Output: false

puts range.cover?(5)
# Output: true

# Difference with non-integer ranges
float_range = (1.0..10.0)
puts float_range.include?(5.5)  # Slower, checks each value
# Output: true

puts float_range.cover?(5.5)    # Faster, just checks bounds
# Output: true

# String ranges
puts ('a'..'z').include?('m')
# Output: true
```

### each

Iterates over each element in the range.

**Syntax:** `range.each { |element| block }`

```ruby
# Numeric range
(1..5).each { |i| puts "Number: #{i}" }
# Output:
# Number: 1
# Number: 2
# Number: 3
# Number: 4
# Number: 5

# Letter range
('a'..'d').each { |letter| puts letter.upcase }
# Output: A, B, C, D

# Building array from range
evens = []
(2..10).each { |i| evens << i if i.even? }
puts evens
# Output: [2, 4, 6, 8, 10]
```

### size

Returns the number of elements in the range.

**Syntax:** `range.size`

```ruby
puts (1..10).size
# Output: 10

puts (1...10).size  # Exclusive
# Output: 9

puts ('a'..'z').size
# Output: 26

puts (5..5).size
# Output: 1

# Float ranges might not have size
begin
  puts (1.0..10.0).size
rescue => e
  puts "Error: #{e.message}"
end
# Output: Error: can't iterate from Float
```

### first/last

Gets the first or last element(s) of the range.

**Syntax:** `range.first(n = 1)` or `range.last(n = 1)`

```ruby
range = (10..20)

puts range.first
# Output: 10

puts range.last
# Output: 20

puts range.first(3)
# Output: [10, 11, 12]

puts range.last(3)
# Output: [18, 19, 20]

# Letter ranges
letters = ('x'..'z')
puts letters.first
# Output: x

puts letters.last(2)
# Output: ["y", "z"]
```

---

## Object Methods

### class

Returns the class of an object.

**Syntax:** `object.class`

```ruby
puts "hello".class
# Output: String

puts 42.class
# Output: Integer

puts 3.14.class
# Output: Float

puts [1, 2, 3].class
# Output: Array

puts({name: "John"}.class)
# Output: Hash

puts true.class
# Output: TrueClass

puts nil.class
# Output: NilClass
```

### is_a?/kind_of?

Checks if an object is an instance of a class or its subclasses.

**Syntax:** `object.is_a?(class)` or `object.kind_of?(class)`

```ruby
puts "hello".is_a?(String)
# Output: true

puts 42.is_a?(Integer)
# Output: true

puts 42.is_a?(Numeric)  # Integer is a subclass of Numeric
# Output: true

puts "hello".kind_of?(Object)  # Everything inherits from Object
# Output: true

puts [1, 2, 3].is_a?(Array)
# Output: true

puts [1, 2, 3].is_a?(String)
# Output: false
```

### instance_of?

Checks if an object is an exact instance of a specific class.

**Syntax:** `object.instance_of?(class)`

```ruby
puts 42.instance_of?(Integer)
# Output: true

puts 42.instance_of?(Numeric)  # Integer inherits from Numeric
# Output: false (not exact class)

puts "hello".instance_of?(String)
# Output: true

puts "hello".instance_of?(Object)
# Output: false (String inherits from Object)
```

### respond_to?

Checks if an object can respond to a method.

**Syntax:** `object.respond_to?(method_name)`

```ruby
puts "hello".respond_to?(:upcase)
# Output: true

puts "hello".respond_to?(:push)
# Output: false

puts [1, 2, 3].respond_to?(:push)
# Output: true

puts 42.respond_to?(:times)
# Output: true

# Useful for duck typing
def process_data(obj)
  if obj.respond_to?(:each)
    obj.each { |item| puts item }
  else
    puts obj
  end
end

process_data([1, 2, 3])  # Calls each
process_data("hello")    # Just prints string
```

### nil?

Checks if an object is nil.

**Syntax:** `object.nil?`

```ruby
puts nil.nil?
# Output: true

puts "hello".nil?
# Output: false

puts 0.nil?
# Output: false

puts false.nil?
# Output: false

# Useful for checking variables
name = nil
puts "No name provided" if name.nil?
# Output: No name provided

# Method might return nil
result = [1, 2, 3].find { |x| x > 10 }
puts "Not found" if result.nil?
# Output: Not found
```

### to_s

Converts an object to its string representation.

**Syntax:** `object.to_s`

```ruby
puts 42.to_s
# Output: 42

puts 3.14.to_s
# Output: 3.14

puts [1, 2, 3].to_s
# Output: [1, 2, 3]

puts({name: "John", age: 30}.to_s)
# Output: {:name=>"John", :age=>30}

puts true.to_s
# Output: true

puts nil.to_s
# Output: (empty string)
```

### to_i/to_f

Converts an object to integer or float.

**Syntax:** `object.to_i` or `object.to_f`

```ruby
puts "42".to_i
# Output: 42

puts "3.14".to_f
# Output: 3.14

puts 3.14.to_i
# Output: 3

puts 42.to_f
# Output: 42.0

# Handles invalid strings
puts "hello".to_i
# Output: 0

puts "123abc".to_i
# Output: 123

puts "abc123".to_i
# Output: 0
```

### inspect

Returns a detailed string representation for debugging.

**Syntax:** `object.inspect`

```ruby
puts "hello".inspect
# Output: "hello"

puts 42.inspect
# Output: 42

puts nil.inspect
# Output: nil

puts [1, 2, 3].inspect
# Output: [1, 2, 3]

# Shows difference from to_s
puts "hello world"      # Output: hello world
puts "hello world".inspect  # Output: "hello world"
```

### freeze

Makes an object immutable.

**Syntax:** `object.freeze`

```ruby
str = "hello"
str.freeze

begin
  str << " world"
rescue => e
  puts "Error: #{e.message}"
end
# Output: Error: can't modify frozen String

arr = [1, 2, 3].freeze
begin
  arr << 4
rescue => e
  puts "Error: #{e.message}"
end
# Output: Error: can't modify frozen Array
```

### frozen?

Checks if an object is frozen.

**Syntax:** `object.frozen?`

```ruby
str = "hello"
puts str.frozen?
# Output: false

str.freeze
puts str.frozen?
# Output: true

# Strings can be frozen by default in some cases
puts "literal".frozen?
# Output: true (in Ruby 3+)

puts [1, 2, 3].frozen?
# Output: false
```

---

## Enumerable Methods

### each_with_object

Iterates with an accumulator object.

**Syntax:** `enumerable.each_with_object(object) { |element, accumulator| block }`

```ruby
# Building a hash
letters = ['a', 'b', 'c']
result = letters.each_with_object({}) do |letter, hash|
  hash[letter] = letter.upcase
end
puts result
# Output: {"a"=>"A", "b"=>"B", "c"=>"C"}

# Building an array
numbers = [1, 2, 3, 4, 5]
evens = numbers.each_with_object([]) do |num, arr|
  arr << num if num.even?
end
puts evens
# Output: [2, 4]

# Counting occurrences
words = ["cat", "dog", "cat", "bird", "dog", "cat"]
counts = words.each_with_object(Hash.new(0)) do |word, hash|
  hash[word] += 1
end
puts counts
# Output: {"cat"=>3, "dog"=>2, "bird"=>1}
```

### reduce/inject

Combines elements using an operation.

**Syntax:** `enumerable.reduce(initial) { |accumulator, element| block }`

```ruby
numbers = [1, 2, 3, 4, 5]

# Sum all numbers
sum = numbers.reduce(0) { |total, num| total + num }
puts sum
# Output: 15

# Product of all numbers
product = numbers.reduce(1) { |total, num| total * num }
puts product
# Output: 120

# Using symbol for simple operations
puts numbers.reduce(:+)
# Output: 15

puts numbers.reduce(:*)
# Output: 120

# Find maximum
puts numbers.reduce { |max, num| num > max ? num : max }
# Output: 5

# Concatenate strings
words = ["Hello", " ", "World", "!"]
sentence = words.reduce("") { |result, word| result + word }
puts sentence
# Output: Hello World!
```

### group_by

Groups elements by the result of a block.

**Syntax:** `enumerable.group_by { |element| grouping_criteria }`

```ruby
# Group numbers by even/odd
numbers = [1, 2, 3, 4, 5, 6]
grouped = numbers.group_by { |num| num.even? }
puts grouped
# Output: {false=>[1, 3, 5], true=>[2, 4, 6]}

# Group words by length
words = ["cat", "dog", "elephant", "ant", "bird"]
by_length = words.group_by { |word| word.length }
puts by_length
# Output: {3=>["cat", "dog", "ant"], 8=>["elephant"], 4=>["bird"]}

# Group people by age group
people = [
  {name: "Alice", age: 25},
  {name: "Bob", age: 35},
  {name: "Charlie", age: 28},
  {name: "Diana", age: 42}
]

age_groups = people.group_by do |person|
  case person[:age]
  when 20..30 then "twenties"
  when 31..40 then "thirties"
  else "other"
  end
end
puts age_groups
# Output: {"twenties"=>[{:name=>"Alice", :age=>25}, {:name=>"Charlie", :age=>28}], "thirties"=>[{:name=>"Bob", :age=>35}], "other"=>[{:name=>"Diana", :age=>42}]}
```

### partition

Splits elements into two groups based on a condition.

**Syntax:** `enumerable.partition { |element| condition }`

```ruby
# Partition numbers into even and odd
numbers = [1, 2, 3, 4, 5, 6, 7, 8]
evens, odds = numbers.partition { |num| num.even? }
puts evens
# Output: [2, 4, 6, 8]
puts odds
# Output: [1, 3, 5, 7]

# Partition words by length
words = ["cat", "dog", "elephant", "ant"]
long, short = words.partition { |word| word.length > 3 }
puts long
# Output: ["elephant"]
puts short
# Output: ["cat", "dog", "ant"]

# Partition students by passing grade
students = [
  {name: "Alice", grade: 85},
  {name: "Bob", grade: 72},
  {name: "Charlie", grade: 95},
  {name: "Diana", grade: 68}
]

passing, failing = students.partition { |student| student[:grade] >= 75 }
puts passing.map { |s| s[:name] }
# Output: ["Alice", "Charlie"]
```

### zip

Combines elements from multiple arrays.

**Syntax:** `array.zip(other_array, ...)`

```ruby
# Zip two arrays
names = ["Alice", "Bob", "Charlie"]
ages = [25, 30, 35]
combined = names.zip(ages)
puts combined
# Output: [["Alice", 25], ["Bob", 30], ["Charlie", 35]]

# Zip three arrays
colors = ["red", "green", "blue"]
numbers = [1, 2, 3]
letters = ["a", "b", "c"]
result = colors.zip(numbers, letters)
puts result
# Output: [["red", 1, "a"], ["green", 2, "b"], ["blue", 3, "c"]]

# Different lengths (shorter arrays get nil)
first = [1, 2, 3, 4]
second = ["a", "b"]
puts first.zip(second)
# Output: [[1, "a"], [2, "b"], [3, nil], [4, nil]]

# Create hash from zipped arrays
keys = [:name, :age, :city]
values = ["John", 28, "NYC"]
hash = Hash[keys.zip(values)]
puts hash
# Output: {:name=>"John", :age=>28, :city=>"NYC"}
```

### cycle

Repeats the collection a specified number of times.

**Syntax:** `enumerable.cycle(n) { |element| block }`

```ruby
# Cycle through array 3 times
colors = ["red", "green", "blue"]
colors.cycle(2) { |color| puts color }
# Output:
# red
# green
# blue
# red
# green
# blue

# Infinite cycle (be careful!)
# [1, 2, 3].cycle { |num| puts num }  # This would run forever

# Practical example: round-robin assignment
tasks = ["Task A", "Task B", "Task C"]
workers = ["Alice", "Bob"]
assignments = []

tasks.each_with_index do |task, index|
  worker = workers[index % workers.length]
  assignments << "#{task} -> #{worker}"
end

puts assignments
# Output: ["Task A -> Alice", "Task B -> Bob", "Task C -> Alice"]
```

---

This comprehensive guide covers Ruby's most useful built-in methods across different data types. Each method includes practical examples with expected outputs to help you understand when and how to use them effectively in your Ruby programs!
