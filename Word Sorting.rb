def sentence
puts "Tell me a sentence"
sentence = gets.chomp
sentence_array = sentence.delete('.').split(' ').sort
puts sentence_array
end

sentence
