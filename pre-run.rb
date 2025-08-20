require 'pry-byebug'
arr = Array(1..10)
words = ["Hello", "World", "This", "Is", "Not", "Python"]

def isogram?(string)
  original_len = string.length
  string_arr = string.downcase.split
  binding.pry
  unique_len = string_arr.uniq.length
  original_len == unique_len
end

p isogram?("Odin")
p "splits".split(' ')
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