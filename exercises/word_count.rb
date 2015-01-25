# Method name: word_count
# Input: A string representing an English sentence
# Returns: The number of words in the sentence
# Prints: Nothing
#
# Although it's more complicated in relaity, we'll just pretend
# that sequence of spaces in a sentence designates the start of a new word.
# That means we don't care about how many spaces are between two words, only
# that there is at least one.

def word_count(string) #string is the argument to the method, word_count
  entire_string = string.split #Split the string into  words to take out the spaces and makes up one array
  return entire_string.count   # count the words in this array

  #count the # of words in the string
  # Hint: You'll want to use String#split
  # See: http://www.ruby-doc.org/core-2.1.2/String.html#method-i-split
end



if __FILE__ == $0
  p word_count("apple") == 1
  p word_count("123...321") == 1
  p word_count("one two three") == 3
  p word_count("This sentence has five words.") == 5
  p word_count("No-spaces-here") == 1
  p word_count("") == 0  # Empty string
  p word_count(" ") == 0 # A string consisting of a single space
  p word_count("LOL, WTF, OMG") == 3 #string has acronyms which isn't really a word...
  p word_count("Dog, WTF, OMG") == 3 # string has 1 word and 2 acronyms. The word should be counted.
end
  # It's probably worth having a few more sanity checks.
