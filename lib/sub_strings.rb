def sub_string_finder(string, dictionary)
  results_hash = Hash.new(0)

  # Break the string into an array of characters
  string_array = string.downcase.chars

  puts "#{string} was passed in to examine"
  puts string_array

  dictionary.each do |word|
    # For each word in the dictionary
    word_array = word.chars


    puts "=========="
    puts "THE WORD IS #{word}"
    print word_array
    puts " "

    # Go through each character in the string array
    string_array.each_with_index do |string_char, index|

      puts "**********"
      puts "string_char is #{string_char} at index #{index}"

      # Slice out the relevant part of the string array
      string_array_slice = string_array.slice(index, string_array.length)
      puts "string_array_slice"
      print string_array_slice
      puts " "

      if string_array_slice.length < word_array.length
        break
      else
        word_array.each_with_index do |word_char, index|
          puts "word_char at index #{index} is #{word_char}"
          puts "string_array_slice at index #{index} is #{string_array_slice[index]}"

          if index == (word_array.length - 1) && word_char == string_array_slice[index]
            puts "Add word, results hash ="
            results_hash[word] += 1
            print results_hash
            puts " "
          elsif word_char == string_array_slice[index]
            puts "word_char == string_array_slice[index] and it is true? #{word_char == string_array_slice[index]}"
          else
            puts "else!"
            break
          end
          
        end
      end

    # end of one iteration of string_array.each_with_index
    puts "----------"
    end
    # end of one iteration of dictionary do 
    puts ".........."
  end
  puts "final results_hash is"
  print results_hash
  return results_hash
end

# Grab a word from dictionary
# Break word into word_array
# Break string into array
# Go through string_array one by one while matching word_array
# If we have finishied word_array and there's a perfect match with string_array, push word into a hash and increase the count by 1
# We still have to go through every item in the string_array to make sure that we catch everything


# 