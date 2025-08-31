
numbers = Array(1..30)

puts "Enter a number"
input = gets.chomp.to_i

num_include = numbers.include?(input)
if num_include
  index_of = numbers.index(input)
   puts "Your number #{input} is in the array at index #{index_of}"
else
  "Your number is not in the array"
end

puts numbers.inspect




# -----------------------------------------------------------------------------
# new_arr = numbers.reject { |num| num.even?  } 
# puts new_arr.inspect
def odds_evens(arr)
  odd_nums = arr.select{ |num| num.odd?}
  even_nums = arr.select { |num| num.even?}
  return "Even numbers: #{even_nums.inspect}\nOdd numbers: #{odd_nums.inspect}"
end
# puts odds_evens(numbers)

def only_evens?(arr)
  evens = arr.each_with_object([]) do |num, arr|
    arr << num if num.even?
  end
end

def grouped_by(arr)
  odds = []
  evens = []
  arr.map do |num|
    if num.even?
      evens << num
    else
      odds << num
    end
  end
  puts "Even numbers: #{evens.inspect}\nOdd numbers: #{odds.inspect}"
end

# grouped_by(numbers)

# --------------------------------------------------------------------------------------

# puts only_evens?(numbers).inspect
# require 'pry-byebug'
# arr = Array(1..10)
# word_array = ["Hello", "World", "This", "Is", "Not", "Python"]

# def find_word(arr, word)
#   if arr.include?(word)
#     p "You picked '#{word}'. It is at index #{arr.index(word)}"
#   else
#     p "The word '#{word}' is not in the array"
#   end
# end

# p "What word are you looking for? "
# word = gets.capitalize.chomp

# find_word(word_array, word)

# def isogram?(string)
#   original_len = string.length
#   string_arr = string.downcase.split
#   binding.pry
#   unique_len = string_arr.uniq.length
#   original_len == unique_len
# end

# p isogram?("Odin")
# p "splits".split(' ')


# check_if_in_arr = words.include?('This')
# check_index = words.index('This')
# p check_index
# p check_if_in_arr
# shoes = Hash.new

# shoes["hiking"] = "Hiking boot"
# shoes['summer'] = "Sandals"
# shoes['fall'] = 'Runners'
# shoes['winter'] = 'Boots'
# shoes['Fall'] = 'Runners'

# books = {
#   "LOTR" => 'J.R Tolkein',
#   "The Shining" => "Stephen King"
# }

# merged = Hash.new

# merged['shoes'] = shoes
# merged['books'] = books

# p merged['shoes'].keys
# Array Practice


#num_arr1 = Array(1..10)
# num_arr2 = Array(5..10)
# str_arr = Array("a".."z")

# common = num_arr1.concat(num_arr2)
# p common.count(7)
# p str_arr

# new_list = []
# num_arr1.filter do |n|
#   new_list.push(n.even?)
# end



# p new_list
# p "False appears #{new_list.count(false)} times"