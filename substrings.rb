def substrings(string, dictionary)
  found_hash = Hash.new(0)
  string_array = string.downcase.split ' '
  dictionary.each do |substring|
    string_array.each do |key|
      if key.include? substring
        found_hash[substring] += 1
      end
    end
  end
  found_hash
end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
