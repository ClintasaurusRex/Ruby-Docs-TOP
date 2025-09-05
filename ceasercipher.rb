def caesar_cipher(string, shift)
  result = ""

  string.each_char do |char|
    if char >= 'a' && char <= 'z'
      # Shift lowercase letters
      new_char = ((char.ord - 'a'.ord + shift) % 26 + 'a'.ord).chr
      result += new_char
    elsif char >= 'A' && char <= 'Z'
      # Shift uppercase letters
      new_char = ((char.ord - 'A'.ord + shift) % 26 + 'A'.ord).chr
      result += new_char
    else
      # Keep non-alphabetic characters unchanged
      result += char
    end
  end

  result
end

puts caesar_cipher("What a string!", 5) # => "Bmfy f xywnsl!"