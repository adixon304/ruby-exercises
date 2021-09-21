def substrings (string, dictionary)

	#Ensure string is lowercase
	string.downcase!
	string_array = string.split(" ")
	
	#Initialize hash based on dictionary
	words = Hash.new(0)
	dictionary.each { |x| 
	
		string_array.each { |y| 
	
			#find word based on dictionary in substring
			if y.include?(x)		
				words[x] += 1
			end
			}
		} 
	
	puts words
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)