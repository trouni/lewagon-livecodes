# Write a method that returns the acronym33ggg1133.
def acronymize(sentence)
  first_letters = []
  sentence.split.each { |word| first_letters << word[0].upcase }
  first_letters.join

#split the sentence in a variable called words[]
# - iterate over the words in the array
# - get the first character of each word
# - capitalize each first character
# - put each first character together with every other first character
# - join each letter from the first_letters array
end

puts acronymize('') == ''
puts acronymize('by the way') == 'BTW'
puts acronymize('laugh Out loud') == 'LOL'
puts acronymize('Bacon lettuce tomato') == 'BLT'
puts acronymize('rolling on floor laughing') == 'ROFL'
puts acronymize('GOOD LUCK') == 'GL'
puts acronymize('best friend') == 'BF'
p acronymize('by the way')
