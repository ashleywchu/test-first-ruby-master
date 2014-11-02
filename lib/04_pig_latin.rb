def translate(string)
	# split string into individual words
	each_word = string.split(" ")

	# translate each word
	translated = each_word.map { |word|
		# split word into individual letters
		each_letter = word.split("")
		# if the first letter of each word is a vowel, add 'ay'
		# to the end of the word
		if each_letter[0] =~ /[aeiou]/
			word + "ay"
		# if the first letter of each word is a consonant, 
		# move that letter to the end of the word and add 'ay'
		else
			# shift and pop letters until letter = vowel
			until each_letter[0] =~ /[aeiou]/
				word = each_letter << each_letter.shift 
				# if the last letter that was moved to the end was a 'q'
				# move another letter ('u')
				if each_letter[-1] == "q"
					each_letter << each_letter.shift
				end
			end
			word.join("") + "ay"
		end
	}
	return translated.join(" ")
end