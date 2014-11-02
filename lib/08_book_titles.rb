class Book
	LITTLE_WORDS = ["the", "a", "an", "of", "and", "to", "in"]
	
	def initialize
		@title = title
	end
	# reader method
	def title
		@title
	end
	# writer method
	def title=(title)
		@title = capitalize_input(title)
	end

	def capitalize_input(title)
		cap_title = []
		words = title.split(" ")
		# for each word, capitalize it unless it is in LITTLE_WORDS
		words.each { |word|
			word.capitalize! unless LITTLE_WORDS.include?(word)
			# push the word into the cap_title array
			cap_title << word
		}
		# capitalize the first word in the array
		cap_title[0].capitalize!
		return cap_title.join(" ")
	end
end
