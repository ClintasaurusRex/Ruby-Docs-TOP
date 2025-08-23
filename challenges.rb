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