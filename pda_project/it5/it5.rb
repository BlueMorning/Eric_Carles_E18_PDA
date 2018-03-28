
# Add a new word at the end of the array
def add_new_word(array_of_words, new_word)
  if(array_of_words != nil && new_word != nil)
    array_of_words.push(new_word)
  end
end



# Find in the dictionnary the words with contain the given string pattern
# Return the array of the matching words
def find_matching_words(array_of_words, pattern)

  matching_words = Array.new();

  if(array_of_words != nil && pattern != nil)
    array_of_words.each do |word|
      matching_words.push(word) if word.include?(pattern)
    end
  end

  return matching_words

end
