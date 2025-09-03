# Nested Collections in Ruby

## Introduction
This lesson builds on your knowledge of arrays and hashes. Arrays and hashes are great ways to store data, but sometimes the data is more complex and needs more structure than a basic array or hash offers. This documentation explores how to use nested arrays and nested hashes to store more complex data.

## Lesson Overview
- Describe a nested array and hash.
- Explain what data is useful to store in a nested array and hash.
- Explain how to access data in a nested array and hash.
- Explain why the `#dig` method is useful.
- Explain how to add data to a nested array and hash.
- Explain how to delete data in a nested array and hash.
- Explain how to create a new nested array that is not mutable.
- Explain how to iterate over a nested array and hash.

## Nested Arrays

### What is a Nested Array?
A nested array, or multidimensional array, is an array that contains other arrays. Nested arrays can be useful to store groups of similar data or positional data.

#### Example
```ruby
test_scores = [
  [97, 76, 79, 93],
  [79, 84, 76, 79],
  [88, 67, 64, 76],
  [94, 55, 67, 81]
]

teacher_mailboxes = [
  ["Adams", "Baker", "Clark", "Davis"],
  ["Jones", "Lewis", "Lopez", "Moore"],
  ["Perez", "Scott", "Smith", "Young"]
]
```

### Accessing Elements
Accessing a specific element within a nested array is done by calling `array[x][y]`, where `x` is the index of the nested element and `y` is the index inside of the nested element.

#### Example
```ruby
teacher_mailboxes[0][0] #=> "Adams"
teacher_mailboxes[1][0] #=> "Jones"
teacher_mailboxes[2][0] #=> "Perez"
```

You can also use negative indices to return elements from the end of an array, starting at `[-1]`.
```ruby
teacher_mailboxes[0][-1] #=> "Davis"
teacher_mailboxes[-1][0] #=> "Perez"
teacher_mailboxes[-1][-2] #=> "Smith"
```

If you try to access an index of a nonexistent nested element, it will raise a `NoMethodError`. However, if you try to access a nonexistent index inside of an existing nested element, it will return `nil`.
```ruby
teacher_mailboxes[3][0] #=> NoMethodError
teacher_mailboxes[0][4] #=> nil
```

#### Using `#dig`
The `#dig` method can be used to safely access nested elements, returning `nil` if the index does not exist.
```ruby
teacher_mailboxes.dig(3, 0) #=> nil
teacher_mailboxes.dig(0, 4) #=> nil
```

### Creating a New Nested Array
To create an immutable array of mutable objects, pass the default value for `Array.new` via a block.

#### Example
```ruby
immutable = Array.new(3) { Array.new(2) }
immutable[0][0] = 1000
immutable #=> [[1000, nil], [nil, nil], [nil, nil]]
```

### Adding and Removing Elements
You can add another element to the end of a nested array using the `#push` method or the shovel operator `<<`.

#### Example
```ruby
test_scores << [100, 99, 98, 97]
test_scores #=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [100, 99, 98, 97]]

test_scores.pop
test_scores #=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81]]
```

### Iterating Over Nested Arrays
#### Iterating Over Rows
```ruby
teacher_mailboxes.each_with_index do |row, row_index|
  puts "Row:#{row_index} = #{row}"
end
# Output:
# Row:0 = ["Adams", "Baker", "Clark", "Davis"]
# Row:1 = ["Jones", "Lewis", "Lopez", "Moore"]
# Row:2 = ["Perez", "Scott", "Smith", "Young"]
```

#### Iterating Over Individual Elements
```ruby
teacher_mailboxes.each_with_index do |row, row_index|
  row.each_with_index do |teacher, column_index|
    puts "Row:#{row_index} Column:#{column_index} = #{teacher}"
  end
end
```

#### Flattening Nested Arrays
Use `#flatten` to iterate over all elements in a nested array.
```ruby
teacher_mailboxes.flatten.each do |teacher|
  puts "#{teacher} teaches things"
end
```

### Combining Predicate Enumerables
#### Example
```ruby
check = test_scores.any? do |scores|
  scores.all? { |score| score > 80 }
end
puts check # Output: false
```

## Nested Hashes

### What is a Nested Hash?
A nested hash is a hash that contains other hashes. Nested hashes are a common way to store complex associated data.

#### Example
```ruby
vehicles = {
  alice: {year: 2019, make: "Toyota", model: "Corolla"},
  blake: {year: 2020, make: "Volkswagen", model: "Beetle"},
  caleb: {year: 2020, make: "Honda", model: "Accord"}
}
```

### Accessing Data
Accessing a specific element in a nested hash is done by calling `hash[:x][:y]`, where `:x` is the key of the hash and `:y` is the key of the nested hash.

#### Example
```ruby
vehicles[:alice][:year] #=> 2019
vehicles[:blake][:make] #=> "Volkswagen"
vehicles[:caleb][:model] #=> "Accord"
```

#### Using `#dig`
The `#dig` method can be used to safely access nested keys, returning `nil` if the key does not exist.
```ruby
vehicles.dig(:zoe, :year) #=> nil
vehicles.dig(:alice, :color) #=> nil
```

### Adding and Removing Data
You can add or remove nested hashes just like a regular hash.

#### Example
```ruby
vehicles[:dave] = {year: 2021, make: "Ford", model: "Escape"}
vehicles[:dave][:color] = "red"
vehicles.delete(:blake)
vehicles[:dave].delete(:color)
```

### Iterating Over Nested Hashes
#### Example
```ruby
vehicles.select { |name, data| data[:year] >= 2020 }
vehicles.collect { |name, data| name if data[:year] >= 2020 }.compact
vehicles.filter_map { |name, data| name if data[:year] >= 2020 }
```

