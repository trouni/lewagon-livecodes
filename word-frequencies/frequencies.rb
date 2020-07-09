def count_frequencies(text)
  frequencies = Hash.new(0)
  text.split.each { |word| frequencies[word] += 1 }
  frequencies

  #split the text to words
  #make a hash
  #iterate over the words using each
  #turn the word into the key
  #increment the counter
  #return the hash
end

# def count_frequencies(text)
#   frequencies = {}
#   text.split.each do |word|
#     if frequencies.key?(word)
#       frequencies[word] += 1
#     else
#       frequencies[word] = 1
#     end
#   end

#   return frequencies

#   #split the text to words
#   #make a hash
#   #iterate over the words using each
#   #turn the word into the key
#   #increment the counter
#   #return the hash
# end
