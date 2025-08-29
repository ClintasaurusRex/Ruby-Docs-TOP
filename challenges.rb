# Challenge 1: Print Each Element
# Write a method that takes an array and prints each element.
numbers = Array((1..20))
places = ["mill bay", 'duncan', 'victoria', 'ladysmith']
def print_elements(arr)
  # Your code here
  arr.each do |place|
    puts place
  end
end
print_elements(places).inspect
puts "----------------------------------------------------------------------------------------------------"
# Challenge 2: Multiply Each Element
# Write a method that takes an array of numbers and multiplies each element by 2, printing the result.

def multiply_elements(arr)
  # Your code here
  new_nums = arr.map do |num|
    num * 2
  end

  # new_nums = []
  # arr.each do |num|
  #   num *= 2
  #   new_nums << num
  # end
  # new_nums
end

puts multiply_elements(numbers).inspect
puts "----------------------------------------------------------------------------------------------------"

# Challenge 3: Capitalize Words
# Write a method that takes an array of strings and prints each string capitalized.

def capitalize_words(words)
  # Your code here
  words.each do |word|
    puts word.capitalize
  end
end

capitalize_words(places)

puts "----------------------------------------------------------------------------------------------------"

# Challenge 4: Sum of Elements
# Write a method that calculates the sum of all elements in an array.

def sum_elements(arr)
  # Your code here
  puts arr.sum
end
sum_elements(numbers)
puts "----------------------------------------------------------------------------------------------------"
# Challenge 5: Filter Even Numbers
# Write a method that prints only the even numbers from an array.

def print_evens(arr)
  # Your code here
  new_nums = []
  arr.map do |num|
    if num.even?
      new_nums << num
    end
  end 
  new_nums.inspect
end
puts print_evens(numbers)
puts "----------------------------------------------------------------------------------------------------"
# Challenge 6: Create a Sentence
# Write a method that takes an array of words and prints them as a single sentence.

def create_sentence(words)
  # Your code here
  words.join(" ")
end
puts create_sentence(places)
puts "----------------------------------------------------------------------------------------------------"
# Challenge 7: Count Elements
# Write a method that counts how many elements are in an array.

def count_elements(arr)
  # Your code here
  puts "There are #{arr.count} elements in your array"
end
count_elements(numbers)
puts "----------------------------------------------------------------------------------------------------"
# Challenge 8: Find the Longest Word
# Write a method that finds and prints the longest word in an array of strings.

def longest_word(words)
  # Your code here
  longest = ""
  count = 0
  words.max_by{
    |word| longest = word 
  count = word.length 
}  
  return "The longest word is #{longest} is has #{count} letters"

  # longest = ""
  # word_length = 0
  # words.each do |word|
  #   if word.length > longest.to_i
  #      longest = word
  #      word_length = word.length
  #   end
  # end
  # return "The longest word is #{longest}, it has #{word_length} letters"
end
puts longest_word(places)

puts "----------------------------------------------------------------------------------------------------"

num_hash = {a: 1, b: 2, c: 3}
# Challenge 9: Double the Values in a Hash
# Write a method that doubles the values of a hash where the values are numbers.
puts num_hash[:a]
def double_hash_values(hash)
  # Your code here
  hash.each do |key, value|
    hash[key] = value * 2
  end

end
puts double_hash_values(num_hash)
# Challenge 10: Find Words Starting with a Specific Letter
# Write a method that prints words starting with a specific letter from an array.

def words_starting_with(words, letter)
  # Your code here
  word_with_letter = ""
  words.each do |word|
    if word.start_with?(letter.downcase)
      word_with_letter = word
    end
  end
  puts word_with_letter
end

words_starting_with(places, "M")

