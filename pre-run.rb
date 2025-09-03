test_scores = [
  [97, 76, 79, 93],
  [79, 84, 76, 79],
  [88, 67, 64, 76],
  [94, 55, 67, 81],
]

teacher_mailboxes = [
  ["Adams", "Baker", "Clark", "Davis"],
  ["Jones", "Lewis", "Lopez", "Moore"],
  ["Perez", "Scott", "Smith", "Young"],
]

# Changing the value of the first element in the nested array
puts "-------------------------------------------------------------------"
immutable = Array.new(3) { Array.new(2) }
immutable[0][0] = 1000
puts immutable.inspect
puts "-------------------------------------------------------------------"
# If you want a nil value returned when trying to access an index of a nonexistent nested element, you can use the #dig method. This method can also be used when accessing a nonexistent index inside of an existing nested element.
teacher_mailboxes.dig(3, 0)
#=> nil
teacher_mailboxes.dig(0, 4)
#=> nil

# Just to show that this will add to the nested array
immutable[0][1] = 100
puts immutable.inspect
puts "-------------------------------------------------------------------"
# Adding and removing elements
# This adds to the end of the array
test_scores << [100, 99, 98, 97] # This is the push method
puts test_scores.inspect
puts "-------------------------------------------------------------------"

test_scores.pop # This will remove the last array in the nested array #=> [100, 99, 98, 97]
test_scores[0] # This removes the first element of the nested array #=> 100
puts test_scores.inspect
puts "-------------------------------------------------------------------"

# Iteration over a nested array
teacher_mailboxes.each_with_index do |row, row_index|
  puts "Row:#{row_index} = #{row}"
end
# #=> Row:0 = ["Adams", "Baker", "Clark", "Davis"]
#=> Row:1 = ["Jones", "Lewis", "Lopez", "Moore"]
#=> Row:2 = ["Perez", "Scott", "Smith", "Young"]

# Too iterate over the individual elements inside of each row, you will need to nest another enumerable method inside
teacher_mailboxes.each_with_index do |row, row_index|
  row.each_with_index do |teacher, teacher_column|
    puts "#{row_index} Column:#{teacher_column} = #{teacher}"
  end
end
# #=> Row:0 Column:0 = Adams
#=> Row:0 Column:1 = Baker
#=> Row:0 Column:2 = Clark
#=> Row:0 Column:3 = Davis
#=> Row:1 Column:0 = Jones
#=> Row:1 Column:1 = Lewis

# Although these examples are a bit contrived, it is important to not that if we only need each teachers name it would be beneficial to use the #flatten
teacher_mailboxes.flatten.each do |teacher|
  puts "#{teacher} teaches things"
end
puts "-------------------------------------------------------------------"

# Now let’s take a look at a more complicated example of nesting two predicate enumerables together. Using the above nested array of test scores, let’s determine if any student scored higher than 80 on EVERYTHING.

check = test_scores.any? do |scores|
  scores.all? { |score| score > 80 }
end
puts check
puts "-------------------------------------------------------------------"
# Nested Hashes
vehicles = {
  alice: { year: 2019, make: "Toyota", model: "Corolla" },
  blake: { year: 2020, make: "Volkswagen", model: "Beetle" },
  caleb: { year: 2020, make: "Honda", model: "Accord" },
}

# Accessing data
# Accessing a specific element in a nested hash is very similar to a nested array. It is done by calling hash[:x][:y], where :x is the key of the hash and :y is the key of the nested hash.
# puts vehicles[:alice][:make]

# Similar to nested arrays, if you try to access a key in a nonexistent nested hash, it will raise an NoMethodError, therefore you may want to use the #dig method. As expected, if you try to access a nonexistent key in an existing nested hash, it will return nil.

# vehicles[:zoe][:year]
# #=> NoMethodError
# vehicles.dig(:zoe, :year)
# #=> nil
# vehicles[:alice][:color]
# #=> nil
# vehicles.dig(:alice, :color)
# #=> nil

# Using methods
# Select
over_2020 = vehicles.select { |name, data| data[:year] >= 2020 }
puts over_2020
puts "-------------------------------------------------------------------"
# Using the #collect method will only grab the names instead of the entire nested hash if thats all you need from it

only_names = vehicles.collect { |name, data| name if data[:year] >= 2020 }.compact # try with and without the #compact
puts only_names.inspect

with_map_filter = vehicles.filter_map{|name, data| name if data[:year] >= 2020}
puts with_map_filter.inspect # filter_map combines the collect with the compact into one function :)

puts "-------------------------------------------------------------------"
