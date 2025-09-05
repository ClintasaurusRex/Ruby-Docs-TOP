dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

def substrings(str, dictionary)
  # Create an MT hash
  result = Hash.new(0) # create the hash so that all elements 
  str_input = Array.new(str.downcase.split(" "))

  #Compare the input to the dictionary
  str_input.each do |word| # Loop through the input
    dictionary.each do |dict_word| # Loop through the dictionary
      if word.include?(dict_word) # Compare the input to the words in the dictionary
        result[dict_word] += 1 # Increment the times the word shows up into the our dictionary
      end
    end
  end
  result
end

puts substrings("below", dictionary).inspect

def stock_picker(stocks)
  result = Arran.new()
  
end