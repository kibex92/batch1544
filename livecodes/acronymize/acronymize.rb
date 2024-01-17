
# Split sentence into array of words
# Iterate over the array of words
# Get the first letter of the word 
# Create a new array to store letters
# Capitalize and push the letters to the new array
# Join the array
def acronymize(sentence)
  words = sentence.split
  letters = []
  words.each do |word|
    letter = word[0].capitalize
    letters << letter
  end
 letters.join
end

puts acronymize("Today was crazy") == "TWC"
puts acronymize("laughing out loud") == "LOL"
puts acronymize("NUR deR HsV") == "NDH"
puts acronymize("") == ""
