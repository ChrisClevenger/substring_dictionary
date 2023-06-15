def substrings(string)
  ## Create Dictionary Array
  
  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

  ## Transform "string" into an [array] using .split
  
  string_array = string.split(" ")

  ## Create an empty hash to hold the results of counts

  word_count = {}

  ## Iterate over each word in dictionary

  dictionary.each do |dic_word|

    count = 0 ## Set the count to zero for each dictionary word

    string_array.each do |string_word| 
      if string_word.include?(dic_word)
      count += 1 
    end
  end

  ## Complie the results of iteration into the word_count{} if the result is greater than 0 

  word_count[dic_word] = count if count > 0
  end

## Puts the result of the count as a hash 

  puts word_count

end

substrings("Why don't you go down to the river and tell me what you see?")

