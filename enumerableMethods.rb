friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_list = []

for friend in friends do
  if friend != 'Brian'
  invited_list.push(friend)
  end
end

puts invited_list.inspect #=> ["Sharon", "Leo", "Leila", "Arun"]

# You dont have to use the "do" in the the for loop. 
# Here are two other ways to write the code above

friends.select { |friend| friend != "Brian"}
# Or
friends.reject { |friend| friend == "Brian"}

puts "------------------------------------------------------------------------------------------"

# The .each method is the granddaddy of enumerable methods. It's a bit like Chuck Norris: it can do anything> as You'll see throughout this lesson, though , just because you can use #each to do just about anything doesn't mean it's always the best or most efficient tool for the job.

# Each also works well will hashes
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

# The each_with_index method: This method is the same as #each but provides additional functionality by yielding two block variables instead of one as it iterates through the array. This first variables value is the element itself, while the second variables value is the index of that element within the array. This allows you to do things that are a bit more complex.

fruits = ["apple", "banana", "strawberry", "pineapple"]

fruits.each_with_index { |fruit, index| puts fruit if index.even? }

#=> apple
#=> strawberry
#=> ["apple", "banana", "strawberry", "pineapple"]
puts "------------------------------------------------------------------------------------------"

# The map method: Remember when we tried to use #each to write all of your friends' names in all caps?  For reference here is the code we tried

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.each { |friend| friend.upcase }

#=> ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.map { |friend| friend.upcase }
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`

# gsub in Ruby stands for "global substitution", and it’s used to find and replace text in strings.
# Replaces all matches of pattern in the string with replacement.
# It does not change the original string unless you use gsub! notice the bang operator !

string.gsub(pattern, replacement)
"hello world".gsub(/[aeiou]/, "*")
# => "h*ll* w*rld"
"ruby is fun".gsub("fun", "awesome")
# => "ruby is awesome"

my_order = ['medium Big Mac', 'medium fries', 'medium milkshake']

my_order.map { |item| item.gsub('medium', 'extra large') }
#=> ["extra large Big Mac", "extra large fries", "extra large milkshake"]
