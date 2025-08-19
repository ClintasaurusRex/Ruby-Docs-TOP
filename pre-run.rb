
arr = Array(1..10)
words = ["Hello", "World", "This", "Is", "Not", "Python"]

def check_word_array(arr, w)
  check_if_in_arr = arr.include?(w)
  check_index = arr.index(w)
  p "'#{check_if_in_arr}' is in the array at index #{check_index}"
end

check_word_array(words, 'This')

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