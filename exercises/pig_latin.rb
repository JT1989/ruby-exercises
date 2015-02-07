# Method name: pig_latin
# Inputs:      A string representing a single word (i.e., no spaces)
# Returns:     The word translated into "pig latin"
# Prints:      Nothing

# Note #1
# There are two rules for translating something into "pig latin":
#   1. If a word begins with a consonant or sequence of consonants, move the
#      sequence of consonants  to the end of the word and then append "ay"
#   2. If a word begins with a vowel, just append "ay"
#
# See: http://en.wikipedia.org/wiki/Pig_Latin#Rules
#
# Here are some examples:
# pig_latin("happy") == "appyhay"

def pig_latin(word)
  vowels = ["a", "e", "i", "o", "u"]
  consonants = [ "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "x", "z", "w", "y"]
  downcased_word = word.downcase

  if vowels.include?(downcased_word[0])
    downcased_word + "ay"

  #for sequence of two consonants
  elsif consonants.include?(downcased_word[1] || downcased_word[0])
  downcased_word[2..-1] + downcased_word[0..1] + "ay"

  else consonants.include?(downcased_word[0])
  downcased_word[1..-1] + downcased_word[0] + "ay"

  end
end

if __FILE__ == $0
  p pig_latin("happy") == "appyhay"
  p pig_latin("duck")  == "uckday"
  p pig_latin("glove") == "oveglay" # Notice what happened to "gl"

  p pig_latin("egg")   == "eggay"
  p pig_latin("inbox") == "inboxay"
  p pig_latin("eight") == "eightay"
end
