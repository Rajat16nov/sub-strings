def substrings(sentence, dictionary)
    wordcounts = Hash.new(0)
    sentence = sentence.downcase
    dictionary.each do |word|
        if sentence.include?(word)
            wordcounts[word]=sentence.scan(word).length
        end
    end
    p wordcounts
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)