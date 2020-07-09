require_relative 'frequencies'

text = File.open('data/text.txt').read

count_frequencies(text).sort_by { |word, count| count }.reverse.each do |word, count|
  puts "#{word}: #{count}"
end

