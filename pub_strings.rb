dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

def substrings(str, dictionary)
  # Create an MT hash
  result = Hash.new(0)
  str_input = Array.new(str.downcase.split(" "))

  #Compare the input to the dictionary
  str_input.each do |word|
    dictionary.each do |dict_word|
      if word.include?(dict_word)
        result[dict_word] += 1
      end
    end
  end
  result
end

puts substrings("below", dictionary).inspect
