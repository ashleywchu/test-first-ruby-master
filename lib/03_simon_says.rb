# returns the string
def echo(string)
	return string
end

# returns the string in all caps
def shout(string)
	return string.upcase
end

# returns the string num times (default 2)
def repeat(string, num = 2)
	return ((string + " ") * num).strip
end

# returns num letters from the beginning of string
def start_of_word(string, num)
	letters = string.split("")
	start_letters = ""

	i = 0
	while i < num
		start_letters << letters[i]
		i += 1
	end
	return start_letters
end

# returns the first word from string
def first_word(string)
	words = string.split(" ")
	return words[0]
end

# returns the string appropriately capitalized
def titleize(string)
	little_words = ["and", "over", "the"]

	each_word = string.split(" ")
	each_word.each { |word|
		word.capitalize! unless little_words.include?(word)
	}
	# capitalizes the first word regardless if it is a little_word or not
	each_word[0].capitalize!
	each_word.join(" ")
end










