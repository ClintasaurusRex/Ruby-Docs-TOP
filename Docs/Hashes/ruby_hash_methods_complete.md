# Ruby Hash Methods - Complete Reference

## Table of Contents

1. [Quick Reference Table](#quick-reference-table)
2. [Creation Methods](#creation-methods)
   - [Hash.new](#hashnew)
   - [Hash[]](#hash)
3. [Access Methods](#access-methods)
   - [[]](#)
   - [fetch](#fetch)
   - [dig](#dig)
   - [key?/has_key?](#keyhas_key)
   - [value?/has_value?](#valuehas_value)
   - [values_at](#values_at)
4. [Modification Methods](#modification-methods)
   - [[]=](#-1)
   - [store](#store)
   - [merge](#merge)
   - [merge!](#merge-1)
   - [update](#update)
   - [delete](#delete)
   - [delete_if](#delete_if)
   - [keep_if](#keep_if)
   - [reject](#reject)
   - [reject!](#reject-1)
   - [select](#select)
   - [select!](#select-1)
   - [filter](#filter)
   - [filter!](#filter-1)
   - [clear](#clear)
   - [compact](#compact)
   - [compact!](#compact-1)
5. [Information Methods](#information-methods)
   - [length/size](#lengthsize)
   - [empty?](#empty)
   - [keys](#keys)
   - [values](#values)
   - [default](#default)
   - [default=](#default-1)
   - [default_proc](#default_proc)
   - [default_proc=](#default_proc-1)
6. [Iteration Methods](#iteration-methods)
   - [each](#each)
   - [each_key](#each_key)
   - [each_value](#each_value)
   - [each_pair](#each_pair)
   - [map](#map)
   - [transform_keys](#transform_keys)
   - [transform_keys!](#transform_keys-1)
   - [transform_values](#transform_values)
   - [transform_values!](#transform_values-1)
7. [Conversion Methods](#conversion-methods)
   - [to_a](#to_a)
   - [to_h](#to_h)
   - [to_s](#to_s)
   - [inspect](#inspect)
   - [flatten](#flatten)
   - [invert](#invert)
8. [Comparison Methods](#comparison-methods)
   - [==](#-2)
   - [eql?](#eql)
   - [hash](#hash-1)
   - [compare_by_identity](#compare_by_identity)
   - [compare_by_identity?](#compare_by_identity-1)

---

## Quick Reference Table

| Method                 | Description                                        |
| ---------------------- | -------------------------------------------------- |
| `Hash.new`             | Creates a new empty hash                           |
| `Hash[]`               | Creates a hash from arrays or key-value pairs      |
| `[]`                   | Retrieves value for given key                      |
| `[]=`                  | Sets value for given key                           |
| `fetch`                | Retrieves value with optional default or block     |
| `dig`                  | Extracts nested value using sequence of keys       |
| `key?/has_key?`        | Checks if hash contains given key                  |
| `value?/has_value?`    | Checks if hash contains given value                |
| `values_at`            | Returns array of values for given keys             |
| `store`                | Sets key-value pair (alias for `[]=`)              |
| `merge`                | Returns new hash combining two hashes              |
| `merge!`               | Modifies hash by merging another hash              |
| `update`               | Alias for `merge!`                                 |
| `delete`               | Removes key-value pair and returns value           |
| `delete_if`            | Removes pairs where block returns true             |
| `keep_if`              | Keeps only pairs where block returns true          |
| `reject`               | Returns new hash without pairs where block is true |
| `reject!`              | Removes pairs where block returns true             |
| `select`               | Returns new hash with pairs where block is true    |
| `select!`              | Keeps only pairs where block returns true          |
| `filter`               | Alias for `select`                                 |
| `filter!`              | Alias for `select!`                                |
| `clear`                | Removes all key-value pairs                        |
| `compact`              | Returns new hash without nil values                |
| `compact!`             | Removes nil values from hash                       |
| `length/size`          | Returns number of key-value pairs                  |
| `empty?`               | Checks if hash has no pairs                        |
| `keys`                 | Returns array of all keys                          |
| `values`               | Returns array of all values                        |
| `default`              | Returns default value for missing keys             |
| `default=`             | Sets default value for missing keys                |
| `default_proc`         | Returns default proc for missing keys              |
| `default_proc=`        | Sets default proc for missing keys                 |
| `each`                 | Iterates over each key-value pair                  |
| `each_key`             | Iterates over each key                             |
| `each_value`           | Iterates over each value                           |
| `each_pair`            | Alias for `each`                                   |
| `map`                  | Returns array of block results for each pair       |
| `transform_keys`       | Returns new hash with transformed keys             |
| `transform_keys!`      | Modifies hash by transforming keys                 |
| `transform_values`     | Returns new hash with transformed values           |
| `transform_values!`    | Modifies hash by transforming values               |
| `to_a`                 | Converts hash to array of [key, value] arrays      |
| `to_h`                 | Returns self or converts to hash                   |
| `to_s`                 | Returns string representation                      |
| `inspect`              | Returns detailed string representation             |
| `flatten`              | Returns flattened array representation             |
| `invert`               | Returns new hash with keys and values swapped      |
| `==`                   | Checks if two hashes are equal                     |
| `eql?`                 | Checks if two hashes are equal (stricter)          |
| `hash`                 | Returns hash code for the hash object              |
| `compare_by_identity`  | Makes hash compare keys by identity                |
| `compare_by_identity?` | Checks if hash compares by identity                |

---

## Adding Keys and Values to Hashes

Before diving into specific methods, here are the most common ways to add new keys and values to existing hashes:

### Using Square Bracket Notation []

The most straightforward way to add or update key-value pairs.

```ruby
# Start with an empty hash
person = {}

# Add keys and values
person["name"] = "Alice"
person["age"] = 30
person[:city] = "New York"  # Can mix string and symbol keys

puts person
# Output: {"name"=>"Alice", "age"=>30, :city=>"New York"}

# Update existing values
person["age"] = 31
puts person["age"]
# Output: 31
```

### Using the store Method

Alternative syntax for adding key-value pairs.

```ruby
inventory = {}

# Using store method
inventory.store("apples", 50)
inventory.store("bananas", 30)
inventory.store("oranges", 25)

puts inventory
# Output: {"apples"=>50, "bananas"=>30, "oranges"=>25}

# Returns the value that was stored
result = inventory.store("grapes", 40)
puts result
# Output: 40
```

### Using merge and merge!

Add multiple key-value pairs from another hash.

```ruby
base_config = {"theme" => "light", "font_size" => 12}
new_settings = {"auto_save" => true, "line_numbers" => true, "font_size" => 14}

# merge creates a new hash
combined = base_config.merge(new_settings)
puts combined
# Output: {"theme"=>"light", "font_size"=>14, "auto_save"=>true, "line_numbers"=>true}

# merge! modifies the original hash
base_config.merge!({"notifications" => false, "theme" => "dark"})
puts base_config
# Output: {"theme"=>"dark", "font_size"=>12, "notifications"=>false}
```

### Adding with Default Values

When you need to initialize keys with default values if they don't exist.

```ruby
# Using ||= operator
scores = {"math" => 95}

scores["english"] ||= 0  # Only sets if key doesn't exist
scores["math"] ||= 0     # Won't change existing value

puts scores
# Output: {"math"=>95, "english"=>0}

# Using fetch with default
counters = {}

# Increment counter, starting from 0 if it doesn't exist
counters["visits"] = counters.fetch("visits", 0) + 1
counters["visits"] = counters.fetch("visits", 0) + 1
counters["clicks"] = counters.fetch("clicks", 0) + 1

puts counters
# Output: {"visits"=>2, "clicks"=>1}
```

### Conditional Addition

Add keys only under certain conditions.

```ruby
user_data = {"username" => "alice", "email" => "alice@example.com"}

# Add key only if condition is met
age = 25
user_data["age"] = age if age >= 18

# Add key only if it doesn't already exist
user_data["created_at"] = Time.now unless user_data.key?("created_at")

puts user_data
# Output: {"username"=>"alice", "email"=>"alice@example.com", "age"=>25, "created_at"=>2025-08-15 ...}
```

### Bulk Addition with Multiple Assignment

Add several keys at once using multiple assignment.

```ruby
coordinates = {}

# Multiple assignment
coordinates["x"], coordinates["y"], coordinates["z"] = 10, 20, 30

puts coordinates
# Output: {"x"=>10, "y"=>20, "z"=>30}

# From arrays
keys = ["width", "height", "depth"]
values = [100, 200, 50]

dimensions = {}
keys.zip(values).each { |key, value| dimensions[key] = value }

puts dimensions
# Output: {"width"=>100, "height"=>200, "depth"=>50}
```

### Adding Nested Hashes

Create and add complex nested structures.

```ruby
profile = {}

# Add nested hash structure
profile["personal"] = {}
profile["personal"]["name"] = "Bob"
profile["personal"]["age"] = 28

profile["work"] = {"company" => "TechCorp", "position" => "Developer"}

puts profile
# Output: {"personal"=>{"name"=>"Bob", "age"=>28}, "work"=>{"company"=>"TechCorp", "position"=>"Developer"}}

# Safe navigation for deep nesting
profile["settings"] ||= {}
profile["settings"]["notifications"] ||= {}
profile["settings"]["notifications"]["email"] = true

puts profile["settings"]
# Output: {"notifications"=>{"email"=>true}}
```

---

## Creation Methods

### Hash.new

Creates a new empty hash. Can optionally set a default value.

**Syntax:** `Hash.new(default_value = nil)`

```ruby
# Basic creation
hash1 = Hash.new
puts hash1
# Output: {}

# With default value
hash2 = Hash.new("default")
puts hash2["nonexistent"]
# Output: default

# With default block
hash3 = Hash.new { |hash, key| hash[key] = [] }
hash3[:items] << "item1"
puts hash3
# Output: {:items=>["item1"]}
```

### Hash[]

Creates a hash from arrays or key-value pairs.

**Syntax:** `Hash[key, value, ...]` or `Hash[array]`

```ruby
# From key-value pairs
hash1 = Hash["a", 1, "b", 2]
puts hash1
# Output: {"a"=>1, "b"=>2}

# From array of arrays
hash2 = Hash[["name", "John"], ["age", 30]]
puts hash2
# Output: {"name"=>"John", "age"=>30}

# From array of pairs
pairs = [[:x, 10], [:y, 20]]
hash3 = Hash[pairs]
puts hash3
# Output: {:x=>10, :y=>20}
```

---

## Access Methods

### []

Retrieves the value for a given key. Returns nil if key doesn't exist (unless default is set).

**Syntax:** `hash[key]`

```ruby
person = {"name" => "Alice", "age" => 25}
puts person["name"]
# Output: Alice

puts person["height"]
# Output: nil

# With symbol keys
data = {name: "Bob", city: "NYC"}
puts data[:name]
# Output: Bob
```

### fetch

Retrieves value for key with optional default or block for missing keys.

**Syntax:** `hash.fetch(key)` or `hash.fetch(key, default)` or `hash.fetch(key) { block }`

```ruby
person = {"name" => "Charlie", "age" => 30}

# Basic fetch
puts person.fetch("name")
# Output: Charlie

# Fetch with default
puts person.fetch("height", "unknown")
# Output: unknown

# Fetch with block
puts person.fetch("weight") { "not provided" }
# Output: not provided

# Will raise KeyError if no default
begin
  person.fetch("missing")
rescue KeyError => e
  puts "Error: #{e.message}"
end
# Output: Error: key not found: "missing"
```

### dig

Extracts nested value using a sequence of keys.

**Syntax:** `hash.dig(key, ...)`

```ruby
data = {
  user: {
    profile: {
      name: "David",
      contact: {
        email: "david@example.com"
      }
    }
  }
}

puts data.dig(:user, :profile, :name)
# Output: David

puts data.dig(:user, :profile, :contact, :email)
# Output: david@example.com

puts data.dig(:user, :settings, :theme)
# Output: nil (missing key)
```

### key?/has_key?

Checks if the hash contains the given key.

**Syntax:** `hash.key?(key)` or `hash.has_key?(key)`

```ruby
fruits = {"apple" => 5, "banana" => 3, "orange" => 8}

puts fruits.key?("apple")
# Output: true

puts fruits.has_key?("grape")
# Output: false

# Works with symbols too
symbols = {name: "test", value: 42}
puts symbols.key?(:name)
# Output: true
```

### value?/has_value?

Checks if the hash contains the given value.

**Syntax:** `hash.value?(value)` or `hash.has_value?(value)`

```ruby
inventory = {"apples" => 10, "bananas" => 5, "oranges" => 10}

puts inventory.value?(10)
# Output: true

puts inventory.has_value?(15)
# Output: false

puts inventory.value?(5)
# Output: true
```

### values_at

Returns an array of values for the given keys.

**Syntax:** `hash.values_at(key1, key2, ...)`

```ruby
scores = {"math" => 95, "english" => 87, "science" => 92, "history" => 88}

puts scores.values_at("math", "science")
# Output: [95, 92]

puts scores.values_at("math", "nonexistent", "english")
# Output: [95, nil, 87]
```

---

## Modification Methods

### []=

Sets the value for a given key.

**Syntax:** `hash[key] = value`

```ruby
person = {}
person["name"] = "Emma"
person["age"] = 28
person[:city] = "Boston"

puts person
# Output: {"name"=>"Emma", "age"=>28, :city=>"Boston"}

# Updating existing key
person["age"] = 29
puts person["age"]
# Output: 29
```

### store

Sets a key-value pair (alias for `[]=`).

**Syntax:** `hash.store(key, value)`

```ruby
config = {}
config.store("debug", true)
config.store("timeout", 30)

puts config
# Output: {"debug"=>true, "timeout"=>30}

# Returns the value
result = config.store("retries", 3)
puts result
# Output: 3
```

### merge

Returns a new hash combining the current hash with another hash.

**Syntax:** `hash.merge(other_hash)`

```ruby
defaults = {"color" => "blue", "size" => "medium"}
options = {"color" => "red", "style" => "bold"}

combined = defaults.merge(options)
puts combined
# Output: {"color"=>"red", "size"=>"medium", "style"=>"bold"}

# Original hashes unchanged
puts defaults
# Output: {"color"=>"blue", "size"=>"medium"}

# With block for conflicts
result = defaults.merge(options) { |key, old_val, new_val| "#{old_val}-#{new_val}" }
puts result
# Output: {"color"=>"blue-red", "size"=>"medium", "style"=>"bold"}
```

### merge!

Modifies the hash by merging another hash into it.

**Syntax:** `hash.merge!(other_hash)`

```ruby
settings = {"theme" => "dark", "font_size" => 12}
updates = {"theme" => "light", "auto_save" => true}

settings.merge!(updates)
puts settings
# Output: {"theme"=>"light", "font_size"=>12, "auto_save"=>true}

# With block
hash1 = {"a" => 1, "b" => 2}
hash2 = {"b" => 3, "c" => 4}

hash1.merge!(hash2) { |key, old_val, new_val| old_val + new_val }
puts hash1
# Output: {"a"=>1, "b"=>5, "c"=>4}
```

### update

Alias for `merge!`.

**Syntax:** `hash.update(other_hash)`

```ruby
original = {"x" => 1, "y" => 2}
changes = {"y" => 3, "z" => 4}

original.update(changes)
puts original
# Output: {"x"=>1, "y"=>3, "z"=>4}
```

### delete

Removes a key-value pair and returns the value.

**Syntax:** `hash.delete(key)`

```ruby
data = {"name" => "Frank", "age" => 35, "city" => "Chicago"}

removed_value = data.delete("age")
puts removed_value
# Output: 35

puts data
# Output: {"name"=>"Frank", "city"=>"Chicago"}

# Returns nil if key doesn't exist
result = data.delete("nonexistent")
puts result.nil?
# Output: true

# With block for missing keys
result = data.delete("missing") { |key| "#{key} not found" }
puts result
# Output: missing not found
```

### delete_if

Removes key-value pairs where the block returns true.

**Syntax:** `hash.delete_if { |key, value| condition }`

```ruby
numbers = {"one" => 1, "two" => 2, "three" => 3, "four" => 4}

numbers.delete_if { |key, value| value.even? }
puts numbers
# Output: {"one"=>1, "three"=>3}

# Another example
ages = {"Alice" => 25, "Bob" => 17, "Charlie" => 30, "Diana" => 16}
ages.delete_if { |name, age| age < 18 }
puts ages
# Output: {"Alice"=>25, "Charlie"=>30}
```

### keep_if

Keeps only key-value pairs where the block returns true.

**Syntax:** `hash.keep_if { |key, value| condition }`

```ruby
grades = {"math" => 85, "english" => 92, "science" => 78, "history" => 95}

grades.keep_if { |subject, grade| grade >= 90 }
puts grades
# Output: {"english"=>92, "history"=>95}

# Another example
inventory = {"apples" => 0, "bananas" => 5, "oranges" => 0, "grapes" => 3}
inventory.keep_if { |fruit, count| count > 0 }
puts inventory
# Output: {"bananas"=>5, "grapes"=>3}
```

### reject

Returns a new hash without pairs where the block returns true.

**Syntax:** `hash.reject { |key, value| condition }`

```ruby
temperatures = {"Mon" => 75, "Tue" => 68, "Wed" => 72, "Thu" => 65, "Fri" => 70}

warm_days = temperatures.reject { |day, temp| temp < 70 }
puts warm_days
# Output: {"Mon"=>75, "Wed"=>72, "Fri"=>70}

# Original hash unchanged
puts temperatures
# Output: {"Mon"=>75, "Tue"=>68, "Wed"=>72, "Thu"=>65, "Fri"=>70}
```

### reject!

Removes pairs where the block returns true (modifies original).

**Syntax:** `hash.reject! { |key, value| condition }`

```ruby
prices = {"apple" => 1.50, "banana" => 0.75, "orange" => 2.00, "grape" => 3.50}

prices.reject! { |fruit, price| price > 2.00 }
puts prices
# Output: {"apple"=>1.5, "banana"=>0.75, "orange"=>2.0}

# Returns nil if no changes made
result = prices.reject! { |fruit, price| price > 5.00 }
puts result.nil?
# Output: true
```

### select

Returns a new hash with pairs where the block returns true.

**Syntax:** `hash.select { |key, value| condition }`

```ruby
students = {"Alice" => 95, "Bob" => 72, "Charlie" => 88, "Diana" => 91}

honor_roll = students.select { |name, grade| grade >= 90 }
puts honor_roll
# Output: {"Alice"=>95, "Diana"=>91}

# Original unchanged
puts students
# Output: {"Alice"=>95, "Bob"=>72, "Charlie"=>88, "Diana"=>91}
```

### select!

Keeps only pairs where the block returns true (modifies original).

**Syntax:** `hash.select! { |key, value| condition }`

```ruby
products = {"laptop" => 999, "mouse" => 25, "keyboard" => 75, "monitor" => 350}

products.select! { |item, price| price >= 100 }
puts products
# Output: {"laptop"=>999, "monitor"=>350}

# Returns nil if no changes made
result = products.select! { |item, price| price >= 100 }
puts result.nil?
# Output: true
```

### filter

Alias for `select`.

**Syntax:** `hash.filter { |key, value| condition }`

```ruby
weather = {"sunny" => 8, "rainy" => 3, "cloudy" => 5, "snowy" => 1}

good_weather = weather.filter { |type, days| days >= 5 }
puts good_weather
# Output: {"sunny"=>8, "cloudy"=>5}
```

### filter!

Alias for `select!`.

**Syntax:** `hash.filter! { |key, value| condition }`

```ruby
scores = {"level1" => 450, "level2" => 280, "level3" => 520, "level4" => 180}

scores.filter! { |level, points| points >= 300 }
puts scores
# Output: {"level1"=>450, "level3"=>520}
```

### clear

Removes all key-value pairs from the hash.

**Syntax:** `hash.clear`

```ruby
data = {"name" => "John", "age" => 30, "city" => "NYC"}
puts data.length
# Output: 3

data.clear
puts data
# Output: {}

puts data.length
# Output: 0
```

### compact

Returns a new hash without nil values.

**Syntax:** `hash.compact`

```ruby
mixed = {"name" => "Grace", "age" => nil, "city" => "Seattle", "phone" => nil}

clean = mixed.compact
puts clean
# Output: {"name"=>"Grace", "city"=>"Seattle"}

# Original unchanged
puts mixed
# Output: {"name"=>"Grace", "age"=>nil, "city"=>"Seattle", "phone"=>nil}
```

### compact!

Removes nil values from the hash.

**Syntax:** `hash.compact!`

```ruby
user_data = {"username" => "hacker", "email" => nil, "verified" => true, "phone" => nil}

user_data.compact!
puts user_data
# Output: {"username"=>"hacker", "verified"=>true}

# Returns nil if no changes made
clean_hash = {"a" => 1, "b" => 2}
result = clean_hash.compact!
puts result.nil?
# Output: true
```

---

## Information Methods

### length/size

Returns the number of key-value pairs in the hash.

**Syntax:** `hash.length` or `hash.size`

```ruby
empty_hash = {}
puts empty_hash.length
# Output: 0

small_hash = {"a" => 1, "b" => 2}
puts small_hash.size
# Output: 2

large_hash = (1..100).to_a.zip((1..100).to_a).to_h
puts large_hash.length
# Output: 100
```

### empty?

Checks if the hash has no key-value pairs.

**Syntax:** `hash.empty?`

```ruby
hash1 = {}
puts hash1.empty?
# Output: true

hash2 = {"key" => "value"}
puts hash2.empty?
# Output: false

hash3 = {"a" => 1}
hash3.clear
puts hash3.empty?
# Output: true
```

### keys

Returns an array of all keys in the hash.

**Syntax:** `hash.keys`

```ruby
person = {"name" => "Isabel", "age" => 32, "occupation" => "Engineer"}
puts person.keys
# Output: ["name", "age", "occupation"]

# With mixed key types
mixed = {"string_key" => 1, :symbol_key => 2, 123 => 3}
puts mixed.keys
# Output: ["string_key", :symbol_key, 123]

# Empty hash
puts {}.keys
# Output: []
```

### values

Returns an array of all values in the hash.

**Syntax:** `hash.values`

```ruby
scores = {"math" => 95, "english" => 87, "science" => 92}
puts scores.values
# Output: [95, 87, 92]

# With duplicate values
colors = {"sky" => "blue", "ocean" => "blue", "grass" => "green"}
puts colors.values
# Output: ["blue", "blue", "green"]

# Empty hash
puts {}.values
# Output: []
```

### default

Returns the default value for missing keys.

**Syntax:** `hash.default(key = nil)`

```ruby
# Hash with default value
hash1 = Hash.new("N/A")
puts hash1.default
# Output: N/A

# Hash without default
hash2 = {}
puts hash2.default.nil?
# Output: true

# Default can vary by key with proc
hash3 = Hash.new { |h, k| k.to_s.upcase }
puts hash3.default("hello")
# Output: HELLO
```

### default=

Sets the default value for missing keys.

**Syntax:** `hash.default = value`

```ruby
config = {}
config.default = "undefined"

puts config["missing_setting"]
# Output: undefined

# Change default
config.default = "not configured"
puts config["another_missing"]
# Output: not configured

puts config
# Output: {} (default doesn't add keys)
```

### default_proc

Returns the default proc for missing keys.

**Syntax:** `hash.default_proc`

```ruby
# Hash with default proc
hash1 = Hash.new { |h, k| "Key #{k} not found" }
puts hash1.default_proc.class
# Output: Proc

# Hash without default proc
hash2 = Hash.new("default")
puts hash2.default_proc.nil?
# Output: true

# Using the proc
puts hash1["missing"]
# Output: Key missing not found
```

### default_proc=

Sets the default proc for missing keys.

**Syntax:** `hash.default_proc = proc`

```ruby
inventory = {}
inventory.default_proc = proc { |hash, key| hash[key] = 0 }

# Accessing missing key creates it with default value
inventory["apples"] += 5
puts inventory
# Output: {"apples"=>5}

inventory["bananas"] += 3
puts inventory
# Output: {"apples"=>5, "bananas"=>3}
```

---

## Iteration Methods

### each

Iterates over each key-value pair.

**Syntax:** `hash.each { |key, value| block }`

```ruby
person = {"name" => "Jack", "age" => 28, "city" => "Portland"}

person.each { |key, value| puts "#{key}: #{value}" }
# Output:
# name: Jack
# age: 28
# city: Portland

# With index
person.each.with_index { |(key, value), index| puts "#{index}: #{key} = #{value}" }
# Output:
# 0: name = Jack
# 1: age = 28
# 2: city = Portland
```

### each_key

Iterates over each key.

**Syntax:** `hash.each_key { |key| block }`

```ruby
data = {"x" => 10, "y" => 20, "z" => 30}

data.each_key { |key| puts "Key: #{key}" }
# Output:
# Key: x
# Key: y
# Key: z

# Collecting keys
uppercase_keys = []
data.each_key { |key| uppercase_keys << key.upcase }
puts uppercase_keys
# Output: ["X", "Y", "Z"]
```

### each_value

Iterates over each value.

**Syntax:** `hash.each_value { |value| block }`

```ruby
prices = {"apple" => 1.25, "banana" => 0.80, "orange" => 1.50}

prices.each_value { |price| puts "$#{price}" }
# Output:
# $1.25
# $0.8
# $1.5

# Calculating total
total = 0
prices.each_value { |price| total += price }
puts "Total: $#{total}"
# Output: Total: $3.55
```

### each_pair

Alias for `each`.

**Syntax:** `hash.each_pair { |key, value| block }`

```ruby
settings = {"theme" => "dark", "auto_save" => true, "notifications" => false}

settings.each_pair { |setting, value| puts "#{setting} is #{value ? 'enabled' : 'disabled'}" }
# Output:
# theme is disabled
# auto_save is enabled
# notifications is disabled
```

### map

Returns an array of the results of running the block for each key-value pair.

**Syntax:** `hash.map { |key, value| block }`

```ruby
numbers = {"one" => 1, "two" => 2, "three" => 3}

doubled = numbers.map { |key, value| value * 2 }
puts doubled
# Output: [2, 4, 6]

formatted = numbers.map { |key, value| "#{key}: #{value}" }
puts formatted
# Output: ["one: 1", "two: 2", "three: 3"]

# Just keys
keys_upcase = numbers.map { |key, value| key.upcase }
puts keys_upcase
# Output: ["ONE", "TWO", "THREE"]
```

### transform_keys

Returns a new hash with transformed keys.

**Syntax:** `hash.transform_keys { |key| block }`

```ruby
original = {"first_name" => "Kate", "last_name" => "Smith", "email_address" => "kate@example.com"}

symbolized = original.transform_keys { |key| key.to_sym }
puts symbolized
# Output: {:first_name=>"Kate", :last_name=>"Smith", :email_address=>"kate@example.com"}

uppercased = original.transform_keys { |key| key.upcase }
puts uppercased
# Output: {"FIRST_NAME"=>"Kate", "LAST_NAME"=>"Smith", "EMAIL_ADDRESS"=>"kate@example.com"}

# Original unchanged
puts original
# Output: {"first_name"=>"Kate", "last_name"=>"Smith", "email_address"=>"kate@example.com"}
```

### transform_keys!

Modifies the hash by transforming its keys.

**Syntax:** `hash.transform_keys! { |key| block }`

```ruby
config = {"debug_mode" => true, "max_connections" => 100, "timeout_seconds" => 30}

config.transform_keys! { |key| key.gsub("_", "-") }
puts config
# Output: {"debug-mode"=>true, "max-connections"=>100, "timeout-seconds"=>30}

# Another transformation
user_data = {"userName" => "alice", "userAge" => 25, "userCity" => "Denver"}
user_data.transform_keys! { |key| key.downcase }
puts user_data
# Output: {"username"=>"alice", "userage"=>25, "usercity"=>"Denver"}
```

### transform_values

Returns a new hash with transformed values.

**Syntax:** `hash.transform_values { |value| block }`

```ruby
temperatures_f = {"morning" => 68, "afternoon" => 75, "evening" => 70}

temperatures_c = temperatures_f.transform_values { |f| ((f - 32) * 5.0 / 9).round(1) }
puts temperatures_c
# Output: {"morning"=>20.0, "afternoon"=>23.9, "evening"=>21.1}

# String manipulation
names = {"first" => "john", "middle" => "james", "last" => "smith"}
capitalized = names.transform_values { |name| name.capitalize }
puts capitalized
# Output: {"first"=>"John", "middle"=>"James", "last"=>"Smith"}

# Original unchanged
puts temperatures_f
# Output: {"morning"=>68, "afternoon"=>75, "evening"=>70}
```

### transform_values!

Modifies the hash by transforming its values.

**Syntax:** `hash.transform_values! { |value| block }`

```ruby
inventory = {"apples" => "5", "bananas" => "12", "oranges" => "8"}

inventory.transform_values! { |value| value.to_i }
puts inventory
# Output: {"apples"=>5, "bananas"=>12, "oranges"=>8}

# Another example
grades = {"math" => 85, "english" => 92, "science" => 78}
grades.transform_values! { |grade| grade >= 80 ? "Pass" : "Fail" }
puts grades
# Output: {"math"=>"Pass", "english"=>"Pass", "science"=>"Fail"}
```

---

## Conversion Methods

### to_a

Converts the hash to an array of [key, value] arrays.

**Syntax:** `hash.to_a`

```ruby
colors = {"red" => "#FF0000", "green" => "#00FF00", "blue" => "#0000FF"}
array_form = colors.to_a
puts array_form
# Output: [["red", "#FF0000"], ["green", "#00FF00"], ["blue", "#0000FF"]]

# Empty hash
puts {}.to_a
# Output: []

# Can be converted back
new_hash = Hash[array_form]
puts new_hash
# Output: {"red"=>"#FF0000", "green"=>"#00FF00", "blue"=>"#0000FF"}
```

### to_h

Returns self (for hashes) or converts to hash.

**Syntax:** `hash.to_h`

```ruby
original = {"a" => 1, "b" => 2}
converted = original.to_h
puts converted
# Output: {"a"=>1, "b"=>2}

puts original.object_id == converted.object_id
# Output: true (same object)

# With block (transforms to new hash)
numbers = {"one" => 1, "two" => 2, "three" => 3}
doubled = numbers.to_h { |key, value| [key.upcase, value * 2] }
puts doubled
# Output: {"ONE"=>2, "TWO"=>4, "THREE"=>6}
```

### to_s

Returns a string representation of the hash.

**Syntax:** `hash.to_s`

```ruby
simple = {"name" => "Laura", "age" => 27}
puts simple.to_s
# Output: {"name"=>"Laura", "age"=>27}

nested = {"user" => {"name" => "Mike", "settings" => {"theme" => "dark"}}}
puts nested.to_s
# Output: {"user"=>{"name"=>"Mike", "settings"=>{"theme"=>"dark"}}}

empty = {}
puts empty.to_s
# Output: {}
```

### inspect

Returns a detailed string representation (same as `to_s` for hashes).

**Syntax:** `hash.inspect`

```ruby
data = {"status" => "active", "count" => 42, "valid" => true}
puts data.inspect
# Output: {"status"=>"active", "count"=>42, "valid"=>true}

# Same as to_s for hashes
puts data.to_s == data.inspect
# Output: true

# Useful for debugging
complex = {"items" => [1, 2, 3], "metadata" => {"created" => "2025-01-01"}}
puts complex.inspect
# Output: {"items"=>[1, 2, 3], "metadata"=>{"created"=>"2025-01-01"}}
```

### flatten

Returns a flattened array representation.

**Syntax:** `hash.flatten(level = 1)`

```ruby
simple = {"a" => 1, "b" => 2}
puts simple.flatten
# Output: ["a", 1, "b", 2]

# With level parameter
nested = {"x" => [1, 2], "y" => [3, 4]}
puts nested.flatten(1)
# Output: ["x", [1, 2], "y", [3, 4]]

puts nested.flatten(2)
# Output: ["x", 1, 2, "y", 3, 4]

# Deep nesting
deep = {"outer" => {"inner" => {"value" => 42}}}
puts deep.flatten
# Output: ["outer", {"inner"=>{"value"=>42}}]
```

### invert

Returns a new hash with keys and values swapped.

**Syntax:** `hash.invert`

```ruby
original = {"name" => "Nancy", "city" => "Boston", "state" => "MA"}
inverted = original.invert
puts inverted
# Output: {"Nancy"=>"name", "Boston"=>"city", "MA"=>"state"}

# Be careful with duplicate values
duplicates = {"a" => 1, "b" => 1, "c" => 2}
result = duplicates.invert
puts result
# Output: {1=>"b", 2=>"c"} (only one key per value)

# Original unchanged
puts original
# Output: {"name"=>"Nancy", "city"=>"Boston", "state"=>"MA"}
```

---

## Comparison Methods

### ==

Checks if two hashes are equal (same keys and values).

**Syntax:** `hash1 == hash2`

```ruby
hash1 = {"a" => 1, "b" => 2}
hash2 = {"a" => 1, "b" => 2}
hash3 = {"b" => 2, "a" => 1}  # Same content, different order
hash4 = {"a" => 1, "b" => 3}

puts hash1 == hash2
# Output: true

puts hash1 == hash3
# Output: true (order doesn't matter)

puts hash1 == hash4
# Output: false

# Different key types
string_keys = {"1" => "one", "2" => "two"}
symbol_keys = {:"1" => "one", :"2" => "two"}
puts string_keys == symbol_keys
# Output: false
```

### eql?

Checks if two hashes are equal with stricter comparison.

**Syntax:** `hash1.eql?(hash2)`

```ruby
hash1 = {"a" => 1, "b" => 2}
hash2 = {"a" => 1, "b" => 2}

puts hash1.eql?(hash2)
# Output: true

# More strict about types
hash3 = {"a" => 1.0, "b" => 2.0}  # Float values
puts hash1.eql?(hash3)
# Output: false (1 != 1.0 with eql?)

puts hash1 == hash3
# Output: true (== is less strict)
```

### hash

Returns a hash code for the hash object.

**Syntax:** `hash.hash`

```ruby
hash1 = {"x" => 10, "y" => 20}
puts hash1.hash
# Output: (some integer, varies by Ruby version/implementation)

hash2 = {"x" => 10, "y" => 20}
puts hash1.hash == hash2.hash
# Output: true (same content = same hash code)

hash3 = {"y" => 20, "x" => 10}
puts hash1.hash == hash3.hash
# Output: true (order doesn't affect hash code)
```

### compare_by_identity

Makes the hash compare keys by object identity instead of equality.

**Syntax:** `hash.compare_by_identity`

```ruby
hash = {}
str1 = "key"
str2 = "key"

# Normal behavior
hash[str1] = "value1"
hash[str2] = "value2"
puts hash
# Output: {"key"=>"value2"} (str1 and str2 are equal)

# Identity comparison
identity_hash = {}
identity_hash.compare_by_identity
identity_hash[str1] = "value1"
identity_hash[str2] = "value2"
puts identity_hash
# Output: {"key"=>"value1", "key"=>"value2"} (different objects)

puts identity_hash.length
# Output: 2
```

### compare_by_identity?

Checks if the hash compares keys by identity.

**Syntax:** `hash.compare_by_identity?`

```ruby
normal_hash = {}
puts normal_hash.compare_by_identity?
# Output: false

identity_hash = {}
identity_hash.compare_by_identity
puts identity_hash.compare_by_identity?
# Output: true

# Once set, it cannot be undone
puts identity_hash.compare_by_identity?
# Output: true (permanent change)
```

---

This comprehensive guide covers all the essential Hash methods in Ruby with practical examples and expected outputs. Each method includes syntax, description, and real-world usage examples to help you understand when and how to use them effectively.
