def sub_string_finder(string, dictionary)
  results_hash = Hash.new(0)

  # Break the string into an array of characters
  string_array = string.downcase.chars

  puts "#{string} was passed in to examine"
  puts string_array

  dictionary.each do |word|
    # For each word in the dictionary
    word_array = word.chars
    # Go through each character in the string array
    string_array.each_with_index do |string_char, index|
      # Slice out the relevant part of the string array
      string_array_slice = string_array.slice

      if string_array_slice.length < word_array.length
        # If the string slice is shorter than the word, skip
        break
      else
        word_array.each_with_index do |word_char, index|

          if index == (word_array.length - 1) && word_char == string_array_slice[index]
            # If it's the last character of the word and it matches the character in the string at the same index, add it tou results
            results_hash[word] += 1
          elsif word_char == string_array_slice[index]
            # If the character in the word and character in the string at the same positions are the same, keep going
          else
            # If they aren't, end the loop
            break
          end
          
        end
      end
    end
  end
  return results_hash
end

# Grab a word from dictionary
# Break word into word_array
# Break string into array
# Go through string_array one by one while matching word_array
# If we have finishied word_array and there's a perfect match with string_array, push word into a hash and increase the count by 1
# We still have to go through every item in the string_array to make sure that we catch everything