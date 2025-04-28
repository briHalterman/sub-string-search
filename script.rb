# Basically, perform a case insensitive search, much like using Find in a document, to count the occurrences of each word from the provided dictionary parameter in a given string

# Pseudocode
# 1. Downcase the string input
# 2. Downcase the dictionary words
# 3. Create an empty hash to keep track of matches
# 4. For each word in the dictionary:
#     - Check if it appears inside the downcased string
#     - If it does:
#         - If the word is not already in the hash: add it with a value of one
#         - If the word is already in the hash: increase the count value by 1
#5. Return the hash

def substrings(string, dictionary)
  string = string.downcase
  dictionary = dictionary.map { |word| word.downcase }

  word_occurrences = Hash.new(0)

  dictionary.each do |word|
    if string.include?(word)
      word_occurrences[word] += 1
    end
  end

  word_occurrences
end

# Testing
test_dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts "Test1: #{substrings("below", test_dictionary) == { "below" => 1, "low" => 1 }}"
puts "Test2: #{substrings('Howdy partner, sit down! How\'s it going?', test_dictionary) == { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }}"