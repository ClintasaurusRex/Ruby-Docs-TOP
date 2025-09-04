friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_list = []

# You don't have to use the "do" in the for loop. 
# Here are two other ways to write the code above

friends.select { |friend| friend != "Brian" }
# Or
friends.reject { |friend| friend == "Brian" }

puts "------------------------------------------------------------------------------------------"

# The .each method is the granddaddy of enumerable methods. It's a bit like Chuck Norris: 
# it can do anything. As you'll see throughout this lesson, though, just because you can use 
# #each to do just about anything doesn't mean it's always the best or most efficient tool for the job.

# Each also works well with hashes
my_hash = { "one" => 1, "two" => 2 }

my_hash.each { |key, value| puts "#{key} is #{value}" }
#=> one is 1
#=> two is 2
#=> { "one" => 1, "two" => 2}

my_hash.each { |pair| puts "the pair is #{pair}" }
#=> the pair is ["one", 1]
#=> the pair is ["two", 2]
#=> { "one" => 1, "two" => 2}
puts "------------------------------------------------------------------------------------------"

# The each_with_index method: This method is the same as #each but provides additional 
# functionality by yielding two block variables instead of one as it iterates through the array. 
# The first variable's value is the element itself, while the second variable's value is the 
# index of that element within the array. This allows you to do things that are a bit more complex.

fruits = ["apple", "banana", "strawberry", "pineapple"]

fruits.each_with_index { |fruit, index| puts fruit if index.even? }
#=> apple
#=> strawberry
#=> ["apple", "banana", "strawberry", "pineapple"]
puts "------------------------------------------------------------------------------------------"

# The map method: Remember when we tried to use #each to write all of your friends' names 
# in all caps? For reference here is the code we tried

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.each { |friend| friend.upcase }
#=> ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.map { |friend| friend.upcase }
#=> ['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']

# gsub in Ruby stands for "global substitution", and it’s used to find and replace text in strings.
# Replaces all matches of pattern in the string with replacement.
# It does not change the original string unless you use gsub! notice the bang operator !

# string.gsub(pattern, replacement)
# "hello world".gsub(/[aeiou]/, "*")
# # => "h*ll* w*rld"
# "ruby is fun".gsub("fun", "awesome")
# # => "ruby is awesome"

my_order = ['medium Big Mac', 'medium fries', 'medium milkshake']

my_order.map { |item| item.gsub('medium', 'extra large') }
#=> ["extra large Big Mac", "extra large fries", "extra large milkshake"]

# You’ve already seen the #select method in action at the beginning of this lesson in our quest to make Brian an outcast.

# The #select method (also called #filter) passes every item in an array to a block and returns a new array with only the items for which the condition you set in the block evaluated to true.

# First, let’s explore how we would accomplish the same thing using #each:

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_list = []

friends.each do |friend|
  if friend != 'Brian'
    invited_list.push(friend)
  end
end

invited_list
 #=> ["Sharon", "Leo", "Leila", "Arun"]


friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.select { |friend| friend != 'Brian' }

 #=> ["Sharon", "Leo", "Leila", "Arun"]


#  Now that we’ve cut out Brian, we can send out the invites! Let’s say that the friends who you invited to your party have gotten back to you, and their responses are all recorded in a hash. Let’s use #select to see who’s coming. Recall that when you use an enumerable method with a hash, you need to set up block variables for both the key and the value:

responses = { 'Sharon' => 'yes', 'Leo' => 'no', 'Leila' => 'no', 'Arun' => 'yes' }
said_yes = []
said_no = []
responded = responses.select { |person, response| 
if response =='yes'
  then said_yes << person
 else said_no << person
 end}
puts said_yes.inspect
puts said_no.inspect

# Enumerable Methods in Ruby

## The `reduce` Method
The `#reduce` method (also called `#inject`) is possibly the most difficult-to-grasp enumerable for new coders. The general idea is that it takes an array or hash and reduces it down to a single object. You should use `#reduce` when you want to get an output of a single value.

### Example: Summing an Array
Using `#each`:
```ruby
my_numbers = [5, 6, 7, 8]
sum = 0

my_numbers.each { |number| sum += number }

sum
#=> 26
```

Using `#reduce`:
```ruby
my_numbers = [5, 6, 7, 8]

my_numbers.reduce { |sum, number| sum + number }
#=> 26
```

### How It Works
The first block variable in the `#reduce` enumerable (e.g., `sum`) is known as the accumulator. The result of each iteration is stored in the accumulator and then passed to the next iteration. By default, the initial value of the accumulator is the first element in the collection.

#### Example with Initial Value
```ruby
my_numbers = [5, 6, 7, 8]

my_numbers.reduce(1000) { |sum, number| sum + number }
#=> 1026
```

### Advanced Example: Counting Votes
```ruby
votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]

votes.reduce(Hash.new(0)) do |result, vote|
  result[vote] += 1
  result
end
#=> {"Bob's Dirty Burger Shack"=>2, "St. Mark's Bistro"=>1}
```

### Explanation
- The initial value for the accumulator is a hash with a default value of `0`.
- Each iteration updates the hash by incrementing the count for the corresponding vote.

## Bang Methods
Enumerables like `#map` and `#select` return new arrays but don’t modify the arrays they were called on. Bang methods (e.g., `#map!`) modify the original array or hash.

### Example: Non-Destructive `#map`
```ruby
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.map { |friend| friend.upcase }
#=> ['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']

friends
#=> ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
```

### Example: Destructive `#map!`
```ruby
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.map! { |friend| friend.upcase }
#=> ['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']

friends
#=> ['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']
```

### Best Practices
Avoid using bang methods unless absolutely necessary, as they modify the original object and may lead to unintended side effects.

## Return Values of Enumerables
If you need to reuse the result of an enumerable method, store it in a local variable or wrap it in a method definition.

### Example: Using a Local Variable
```ruby
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

invited_friends = friends.select { |friend| friend != 'Brian' }

friends
#=> ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

invited_friends
#=> ["Sharon", "Leo", "Leila", "Arun"]
```

### Example: Using a Method Definition
```ruby
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

def invited_friends(friends)
  friends.select { |friend| friend != 'Brian' }
end

friends
#=> ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

invited_friends(friends)
#=> ["Sharon", "Leo", "Leila", "Arun"]
```

