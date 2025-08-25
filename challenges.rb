def reverse_string(str)
  # Your code here
  str.reverse
end

puts reverse_string("hello") # Output: "olleh"

def find_evens(arr)
  # Your code here
  arr.select do |num|
    num.even?
  end
end

puts find_evens([1, 2, 3, 4, 5, 6]).inspect # Output: [2, 4, 6]

def count_vowels(str)
  # Your code here
  lowered = str.downcase
  lowered.count('aeiou')
end

puts count_vowels("hello world") # Output: 3

def palindrome?(str)
  str == str.reverse
end
puts palindrome?("racecar") # Output: true
puts palindrome?("hello")   # Output: false

def fizzbuzz
  for num in 1..100
    if num % 3 == 0 && num % 5 == 0
      puts "FizzBuzz"
    elsif num % 3 == 0
      puts "Fizz"
    elsif num % 5 == 0
      puts "Buzz"
    end
  end
end

def sum_array(arr)
  arr.sum
end

puts sum_array([20,20,20,20,20])

puts "---------------------------------------------"

def largest_number(arr)
  arr.max
end

puts largest_number([1,2,30,4,5])
puts "---------------------------------------------"

def create_hash(keys, values)
 keys.zip(values).to_h
end
puts create_hash(["name", "age"], ["Alice", 21])