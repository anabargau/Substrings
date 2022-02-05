def substrings(string, dictionary)
	frequency_hash = Hash.new(0)
	string = string.split(/[\s\?\.\!\,\']/)
	string = string.join(" ")
	dictionary.each { |word| frequency_hash[word] = string.split(word).length - 1 }
	frequency_hash = frequency_hash.select { |k,v| v != 0 }
	puts frequency_hash
end

string = gets.chomp.downcase
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings(string, dictionary)
