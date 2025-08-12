## Iterators

Iterators are methods that naturally loop over a given set of data and allow you to operate on each element in the collection. The most common iterator in Ruby is `.each`, which is used with arrays and other collections.

### Using `.each` with Arrays

```ruby
names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']

names.each do |name|
  puts name
end
```

This code will print each name in the array on a new line. The block variable `name` represents the current element in the array for each iteration.

You can also use curly braces for single-line blocks:

```ruby
names.each { |name| puts name }
```

### Adding an Index or Counter

If you want to add a counter to your output, you can do so by initializing a variable before the loop and incrementing it inside the block:

```ruby
names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']
x = 1

names.each do |name|
  puts "#{x}. #{name}"
  x += 1
end
```

### Why Use Iterators?

Iterators like `.each` are preferred by most Rubyists for their readability and expressive power. They help you avoid manual index management and make your code more idiomatic and concise.
