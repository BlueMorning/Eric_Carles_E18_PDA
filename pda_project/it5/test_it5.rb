require_relative("it5")


# "dictionary" is an array of words
dictionary = ["alive", "deliverance", "zoo", "slivering", "flower"]

# 3 new words are added
add_new_word(dictionary, "iron")
add_new_word(dictionary, "overlive")
add_new_word(dictionary, "life")

#puts dictionary

# "dictionary" is passed to the function "find_matching_words"
# to find the words which contain the string pattern "live"
matching_words = find_matching_words(dictionary, "live")

# the found words are printed in the console
puts matching_words
