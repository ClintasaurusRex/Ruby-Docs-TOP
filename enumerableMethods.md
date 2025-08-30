# Enumerable Methods in Ruby

## Filtering Friends

```ruby
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_list = []

friends.each do |friend|
  if friend != 'Brian'
    invited_list.push(friend)
  end
end

puts invited_list.inspect #=> ["Sharon", "Leo", "Leila", "Arun"]
```

You can also use the `select` or `reject` methods:

```ruby
friends.select { |friend| friend != "Brian" }
# Or
friends.reject { |friend| friend == "Brian" }
```

---

## Hash Filtering with `#select`

```ruby
responses = { 'Sharon' => 'yes', 'Leo' => 'no', 'Leila' => 'no', 'Arun' => 'yes' }
said_yes = []
said_no = []

responses.select do |person, response| 
  if response == 'yes'
    said_yes << person
  else
    said_no << person
  end
end

puts said_yes.inspect
puts said_no.inspect
```

---

## Using `gsub` for String Substitution

```ruby
# gsub in Ruby stands for "global substitution" and is used to find and replace text in strings.
# Replaces all matches of pattern in the string with replacement.
# It does not change the original string unless you use gsub! (notice the bang operator!)

# string.gsub(pattern, replacement)
"hello world".gsub(/[aeiou]/, "*")
# => "h*ll* w*rld"

"ruby is fun".gsub("fun", "awesome")
# => "ruby is awesome"

my_order = ['medium Big Mac', 'medium fries', 'medium milkshake']

my_order.map { |item| item.gsub('medium', 'extra large') }
#=> ["extra large Big Mac", "extra large fries", "extra large milkshake"]
```

---

## The `#each` Method

The `.each` method is the granddaddy of enumerable methods. It's a bit like Chuck Norris: it can do anything. However, just because you can use `#each` to do just about anything doesn't mean it's always the best or most efficient tool for the job.

### Example with Arrays

```ruby
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.each { |friend| puts friend }
```

### Example with Hashes

```ruby
my_hash = { "one" => 1, "two" => 2 }

my_hash.each { |key, value| puts "#{key} is #{value}" }
#=> one is 1
#=> two is 2

my_hash.each { |pair| puts "the pair is #{pair}" }
#=> the pair is ["one", 1]
#=> the pair is ["two", 2]
```

---

## The `#each_with_index` Method

This method is the same as `#each` but provides additional functionality by yielding two block variables instead of one as it iterates through the array. The first variable's value is the element itself, while the second variable's value is the index of that element within the array.

```ruby
fruits = ["apple", "banana", "strawberry", "pineapple"]

fruits.each_with_index { |fruit, index| puts fruit if index.even? }
#=> apple
#=> strawberry
```

---

## The `#map` Method

The `#map` method is used to transform elements in an array. For example, to write all of your friends' names in all caps:

```ruby
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.map { |friend| friend.upcase }
#=> ['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']
```

---

## Combining Methods

You’ve already seen the `#select` method in action at the beginning of this lesson in our quest to make Brian an outcast. The `#select` method (also called `#filter`) passes every item in an array to a block and returns a new array with only the items for which the condition you set in the block evaluated to true.

```ruby
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.select { |friend| friend != 'Brian' }
#=> ["Sharon", "Leo", "Leila", "Arun"]
```

---

## Hash Filtering Revisited

```ruby
responses = { 'Sharon' => 'yes', 'Leo' => 'no', 'Leila' => 'no', 'Arun' => 'yes' }
said_yes = []
said_no = []

responses.select { |person, response| 
  if response == 'yes'
    then said_yes << person
  else
    said_no << person
  end
}

puts said_yes.inspect
puts said_no.inspect
```
